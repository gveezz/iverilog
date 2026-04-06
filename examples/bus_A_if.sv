interface bus_A (input clk);
    logic [15:0] data;
    logic write;
    modport test (input data, output write, input clk);
    modport dut (output data, input write, input clk);
endinterface
