# nimcoz

This is a Nim Wrapper For [Coz Profiler](https://github.com/plasma-umass/coz)

## For Background on Causal Profiling:

- Paper: http://www.sigops.org/s/conferences/sosp/2015/current/2015-Monterey/printable/090-curtsinger.pdf
- Video: ["Performance Matters" by Emery Berger](https://www.youtube.com/watch?v=r-TLSBdHe1A)
- Video: [Coz: finding code that counts with causal profiling](https://www.youtube.com/watch?v=jE0V-p1odPg)

## Usage

- Install Coz: https://github.com/plasma-umass/coz

  - Linux: `apt install coz-profiler`
  - OS X: Easiest way is to run a docker image with Linux and install Coz

- Setup
  - Install nimcoz: `nimble install https://github.com/s0kil/nimcoz`
  - Specify Progress Points In Your Program: [Docs](https://s0kil.github.io/nimcoz/index.html)

- Build

  - `nim c --debuginfo:on --debugger:native --passC:"-gdwarf-3" --passL:"-ldl" program.nim`

- Run

  - `coz run --- ./program`

- View Profile
  - Load `profile.coz` into https://plasma-umass.org/coz/
  - Or Locally: `xdg-open /usr/share/coz-profiler/viewer/index.htm`

#### Related

- https://github.com/urjitbhatia/cozgo
- https://github.com/alexcrichton/coz-rs
- https://github.com/filipesilva/node-coz
