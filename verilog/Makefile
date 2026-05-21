
# Define variables
IVERILOG = iverilog
VVP = vvp
GTKWAVE = gtkwave
NGSPICE = ngspice
OUTPUT = cic_sim.out
MIXED = CIC_wrapper.so
MIXED_OBJ = cic_sim_obj_dir
VCD_FILE = cic_filter_sim.vcd
SRC_FILES = coder_verilog.v Integrator_cic.v Differentiator_cic.v Clock_divider_cic.v CIC_verilog_v1.v CIC_wrapper.v tb_CIC_verilog_v1.v
NGSPICE_FILE = CIC_wrapper.v
DEST_DIR = ../xschem/simulations
# Default target
all: run_wave

# Compile using iverilog
$(OUTPUT): $(SRC_FILES)
	$(IVERILOG) -o $(OUTPUT) $(SRC_FILES)

# Run the simulation with vvp
run: $(OUTPUT)
	$(VVP) $(OUTPUT)

copy: 
	cp $(MIXED) $(DEST_DIR)

# Open the wave file in GTKWave
wave: $(VCD_FILE)
	$(GTKWAVE) $(VCD_FILE) conf.gtkw

# Run ngspice vlnggen command
ngspice:
	$(NGSPICE) vlnggen $(NGSPICE_FILE)

# Execute both the simulation and wave viewer
run_wave: run wave

# Run ngspice and then the rest of the steps
full: ngspice run_wave copy

# Clean up generated files
clean:
	rm -f $(OUTPUT) $(VCD_FILE) $(MIXED)
	rm -rf $(MIXED_OBJ) 
