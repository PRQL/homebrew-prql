# State
 - [x] **Formula created:**
 - The initial formula has been created, it contains the basic structure. Now It has to be defined every part in it.
 
 - [x] **Install defined:**
 - The install definition has been created. For now It just build the crate from `cargo build --release --bin prql`. 
 - 
 - [x] **Dependencies checked**
 - Thanks to cargo, the only dependency needed for homebrew is Rust. Then, with Rust (and cargo installed) the `cargo build` command will take care of the inner-rust-dependencies of prql.
 **- - release:** Build optimized artifacts with the `release` profile.
 **- - bin:** A target selection. Build the specified binary.
 - [ ] **OS availables**


## References
 [Homebrew for a Rust app](https://jldlaughlin.medium.com/how-does-homebrew-work-starring-rust-94ae5aa24552).
 [Rust docs](https://doc.rust-lang.org/cargo/commands/cargo-build.html)
