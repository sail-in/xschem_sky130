v {xschem version=2.9.8 file_version=1.2

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 560 -220 610 -220 { lab=#net1}
N 560 -220 560 -190 { lab=#net1}
N 560 -130 720 -130 { lab=0}
N 650 -220 720 -220 { lab=0}
N 720 -220 720 -130 { lab=0}
N 650 -470 650 -440 { lab=0}
N 650 -320 650 -250 { lab=E1}
C {devices/code_shown.sym} 40 -530 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
dc i0 5n 5u 0.05u
plot vc1#branch / vb1#branch
plot e1

.endc
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {sky130_fd_pr/pnp_05v5.sym} 630 -220 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/ammeter.sym} 650 -160 0 0 {name=Vc1 net_name=true}
C {devices/ammeter.sym} 560 -160 0 0 {name=Vb1 net_name=true}
C {devices/lab_pin.sym} 720 -130 0 1 {name=p3 lab=0}
C {devices/lab_pin.sym} 650 -280 0 0 {name=p4 lab=E1}
C {devices/isource.sym} 650 -410 0 0 {name=I0 value=0}
C {devices/lab_pin.sym} 650 -470 0 0 {name=p1 lab=0}
C {devices/ammeter.sym} 650 -350 0 0 {name=Ve1 net_name=true}
C {devices/code.sym} 40 -180 0 0 {name=TT_MODELS
only_toplevel=true

comment="set model_path to the root of sky130 spice primitives"
model_path="~/skywater-pdk/sky130_fd_pr_ngspice"
format=eval(@value\\)
value="
.include @model_path\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include @model_path\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include @model_path\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include @model_path\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include @model_path\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include @model_path\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include @model_path\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include @model_path\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include @model_path\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include @model_path\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include @model_path\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include @model_path\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include @model_path\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include @model_path\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include @model_path\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include @model_path\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include @model_path\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include @model_path\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include @model_path\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include @model_path\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include @model_path\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include @model_path\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include @model_path\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include @model_path\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor@model_path\\\\/Capacitor
.include @model_path\\\\/models/r+c/res_typical__cap_typical.spice
.include @model_path\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include @model_path\\\\/models/corners/tt/specialized_cells.spice
* All models
.include @model_path\\\\/models/all.spice
* Corner
.include @model_path\\\\/models/corners/tt/rf.spice
"}
C {devices/launcher.sym} 110 -260 0 0 {name=h1
descr="Simulation done
using a patched 
sky130 primitive directory,
see patch file" 
url="https://github.com/StefanSchippers/xschem_sky130/blob/main/sky130_fd_pr.patch"}
