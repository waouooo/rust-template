// we can see existing variables.
// note that template and Rhai variables are separate!
file::delete(".github/workflows/release.yml");
file::rename(".github/workflows/build.yml.template", ".github/workflows/build.yml");

let license = variable::get("license").to_upper();
while switch license {
    "NONE" => {
        debug("you selected to not use any license");
        file::delete("LICENSE-APACHE");
        file::delete("LICENSE-MIT");
        false
    }
    "MIT" => {
        debug("you selected to use the MIT license");
        file::delete("LICENSE-APACHE");
        file::rename("LICENSE-MIT", "LICENSE");
        false
    }
    "APACHE" => {
        debug("you selected to use the APACHE license");
        file::rename("LICENSE-APACHE", "LICENSE");
        file::delete("LICENSE-MIT");
        false
    }
    _ => true,
} {
    license = variable::prompt("Which license do you want to use?", "none", ["none", "apache", "mit"]);
}
variable::set("license", license);
