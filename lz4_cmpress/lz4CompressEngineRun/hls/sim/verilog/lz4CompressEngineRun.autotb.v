// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      lz4CompressEngineRun
`define AUTOTB_DUT_INST AESL_inst_lz4CompressEngineRun
`define AUTOTB_TOP      apatb_lz4CompressEngineRun_top
`define AUTOTB_LAT_RESULT_FILE "lz4CompressEngineRun.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "lz4CompressEngineRun.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_lz4CompressEngineRun_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 3.50

`define AESL_FIFO_inStream AESL_autofifo_inStream
`define AESL_FIFO_INST_inStream AESL_autofifo_inst_inStream
`define AESL_FIFO_lz4Out AESL_autofifo_lz4Out
`define AESL_FIFO_INST_lz4Out AESL_autofifo_inst_lz4Out
`define AESL_FIFO_lz4Out_eos AESL_autofifo_lz4Out_eos
`define AESL_FIFO_INST_lz4Out_eos AESL_autofifo_inst_lz4Out_eos
`define AESL_FIFO_lz4OutSize AESL_autofifo_lz4OutSize
`define AESL_FIFO_INST_lz4OutSize AESL_autofifo_inst_lz4OutSize
`define AESL_MEM_max_lit_limit AESL_automem_max_lit_limit
`define AESL_MEM_INST_max_lit_limit mem_inst_max_lit_limit
`define AESL_DEPTH_input_size 1
`define AESL_DEPTH_core_idx 1
`define AUTOTB_TVIN_inStream  "../tv/cdatafile/c.lz4CompressEngineRun.autotvin_inStream.dat"
`define AUTOTB_TVIN_max_lit_limit  "../tv/cdatafile/c.lz4CompressEngineRun.autotvin_max_lit_limit.dat"
`define AUTOTB_TVIN_input_size  "../tv/cdatafile/c.lz4CompressEngineRun.autotvin_input_size.dat"
`define AUTOTB_TVIN_core_idx  "../tv/cdatafile/c.lz4CompressEngineRun.autotvin_core_idx.dat"
`define AUTOTB_TVIN_inStream_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvin_inStream.dat"
`define AUTOTB_TVIN_max_lit_limit_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvin_max_lit_limit.dat"
`define AUTOTB_TVIN_input_size_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvin_input_size.dat"
`define AUTOTB_TVIN_core_idx_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvin_core_idx.dat"
`define AUTOTB_TVOUT_lz4Out  "../tv/cdatafile/c.lz4CompressEngineRun.autotvout_lz4Out.dat"
`define AUTOTB_TVOUT_lz4Out_eos  "../tv/cdatafile/c.lz4CompressEngineRun.autotvout_lz4Out_eos.dat"
`define AUTOTB_TVOUT_lz4OutSize  "../tv/cdatafile/c.lz4CompressEngineRun.autotvout_lz4OutSize.dat"
`define AUTOTB_TVOUT_max_lit_limit  "../tv/cdatafile/c.lz4CompressEngineRun.autotvout_max_lit_limit.dat"
`define AUTOTB_TVOUT_lz4Out_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvout_lz4Out.dat"
`define AUTOTB_TVOUT_lz4Out_eos_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvout_lz4Out_eos.dat"
`define AUTOTB_TVOUT_lz4OutSize_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvout_lz4OutSize.dat"
`define AUTOTB_TVOUT_max_lit_limit_out_wrapc  "../tv/rtldatafile/rtl.lz4CompressEngineRun.autotvout_max_lit_limit.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_core_idx = 1;
parameter LENGTH_inStream = 1248;
parameter LENGTH_input_size = 1;
parameter LENGTH_lz4Out = 598;
parameter LENGTH_lz4OutSize = 1;
parameter LENGTH_lz4Out_eos = 598;
parameter LENGTH_max_lit_limit = 8;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [7 : 0] inStream_dout;
wire  inStream_empty_n;
wire  inStream_read;
wire [7 : 0] lz4Out_din;
wire  lz4Out_full_n;
wire  lz4Out_write;
wire [0 : 0] lz4Out_eos_din;
wire  lz4Out_eos_full_n;
wire  lz4Out_eos_write;
wire [31 : 0] lz4OutSize_din;
wire  lz4OutSize_full_n;
wire  lz4OutSize_write;
wire [2 : 0] max_lit_limit_address0;
wire  max_lit_limit_ce0;
wire [31 : 0] max_lit_limit_d0;
wire [31 : 0] max_lit_limit_q0;
wire  max_lit_limit_we0;
wire [2 : 0] max_lit_limit_address1;
wire  max_lit_limit_ce1;
wire [31 : 0] max_lit_limit_d1;
wire [31 : 0] max_lit_limit_q1;
wire  max_lit_limit_we1;
wire [31 : 0] input_size;
wire [31 : 0] core_idx;
wire ap_start;
wire ap_done;
wire ap_ready;
wire ap_idle;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .inStream_dout(inStream_dout),
    .inStream_empty_n(inStream_empty_n),
    .inStream_read(inStream_read),
    .lz4Out_din(lz4Out_din),
    .lz4Out_full_n(lz4Out_full_n),
    .lz4Out_write(lz4Out_write),
    .lz4Out_eos_din(lz4Out_eos_din),
    .lz4Out_eos_full_n(lz4Out_eos_full_n),
    .lz4Out_eos_write(lz4Out_eos_write),
    .lz4OutSize_din(lz4OutSize_din),
    .lz4OutSize_full_n(lz4OutSize_full_n),
    .lz4OutSize_write(lz4OutSize_write),
    .max_lit_limit_address0(max_lit_limit_address0),
    .max_lit_limit_ce0(max_lit_limit_ce0),
    .max_lit_limit_d0(max_lit_limit_d0),
    .max_lit_limit_q0(max_lit_limit_q0),
    .max_lit_limit_we0(max_lit_limit_we0),
    .max_lit_limit_address1(max_lit_limit_address1),
    .max_lit_limit_ce1(max_lit_limit_ce1),
    .max_lit_limit_d1(max_lit_limit_d1),
    .max_lit_limit_q1(max_lit_limit_q1),
    .max_lit_limit_we1(max_lit_limit_we1),
    .input_size(input_size),
    .core_idx(core_idx),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation inStream

wire fifoinStream_rd;
wire [7 : 0] fifoinStream_dout;
wire fifoinStream_empty_n;
wire fifoinStream_ready;
wire fifoinStream_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream;
reg inStream_ready_reg;

`AESL_FIFO_inStream `AESL_FIFO_INST_inStream (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_rd),
    .if_dout      (fifoinStream_dout),
    .if_empty_n   (fifoinStream_empty_n),
    .ready        (fifoinStream_ready),
    .done         (fifoinStream_done)
);

// Assignment between dut and fifoinStream

// Assign input of fifoinStream
assign      fifoinStream_rd        =   inStream_read & inStream_empty_n;
assign    fifoinStream_ready   =   inStream_ready_reg | ready_initial;
assign    fifoinStream_done    =   0;
// Assign input of dut
assign      inStream_dout       =   fifoinStream_dout;
reg   reg_fifoinStream_empty_n;
initial begin : gen_reg_fifoinStream_empty_n_process
    integer proc_rand;
    reg_fifoinStream_empty_n = fifoinStream_empty_n;
    while (1) begin
        @ (fifoinStream_empty_n);
        reg_fifoinStream_empty_n = fifoinStream_empty_n;
    end
end

assign      inStream_empty_n    =   reg_fifoinStream_empty_n;


//------------------------Fifolz4Out Instantiation--------------

// The input and output of fifolz4Out
wire  fifolz4Out_wr;
wire  [7 : 0] fifolz4Out_din;
wire  fifolz4Out_full_n;
wire  fifolz4Out_ready;
wire  fifolz4Out_done;

`AESL_FIFO_lz4Out `AESL_FIFO_INST_lz4Out(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifolz4Out_wr),
    .if_din       (fifolz4Out_din),
    .if_full_n    (fifolz4Out_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifolz4Out_ready),
    .done         (fifolz4Out_done)
);

// Assignment between dut and fifolz4Out

// Assign input of fifolz4Out
assign      fifolz4Out_wr        =   lz4Out_write & lz4Out_full_n;
assign      fifolz4Out_din        =   lz4Out_din;
assign    fifolz4Out_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifolz4Out_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifolz4Out_full_n;
initial begin : gen_reg_fifolz4Out_full_n_process
    integer proc_rand;
    reg_fifolz4Out_full_n = fifolz4Out_full_n;
    while (1) begin
        @ (fifolz4Out_full_n);
        reg_fifolz4Out_full_n = fifolz4Out_full_n;
    end
end

assign      lz4Out_full_n    =   reg_fifolz4Out_full_n;


//------------------------Fifolz4Out_eos Instantiation--------------

// The input and output of fifolz4Out_eos
wire  fifolz4Out_eos_wr;
wire  [0 : 0] fifolz4Out_eos_din;
wire  fifolz4Out_eos_full_n;
wire  fifolz4Out_eos_ready;
wire  fifolz4Out_eos_done;

`AESL_FIFO_lz4Out_eos `AESL_FIFO_INST_lz4Out_eos(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifolz4Out_eos_wr),
    .if_din       (fifolz4Out_eos_din),
    .if_full_n    (fifolz4Out_eos_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifolz4Out_eos_ready),
    .done         (fifolz4Out_eos_done)
);

// Assignment between dut and fifolz4Out_eos

// Assign input of fifolz4Out_eos
assign      fifolz4Out_eos_wr        =   lz4Out_eos_write & lz4Out_eos_full_n;
assign      fifolz4Out_eos_din        =   lz4Out_eos_din;
assign    fifolz4Out_eos_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifolz4Out_eos_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifolz4Out_eos_full_n;
initial begin : gen_reg_fifolz4Out_eos_full_n_process
    integer proc_rand;
    reg_fifolz4Out_eos_full_n = fifolz4Out_eos_full_n;
    while (1) begin
        @ (fifolz4Out_eos_full_n);
        reg_fifolz4Out_eos_full_n = fifolz4Out_eos_full_n;
    end
end

assign      lz4Out_eos_full_n    =   reg_fifolz4Out_eos_full_n;


//------------------------Fifolz4OutSize Instantiation--------------

// The input and output of fifolz4OutSize
wire  fifolz4OutSize_wr;
wire  [31 : 0] fifolz4OutSize_din;
wire  fifolz4OutSize_full_n;
wire  fifolz4OutSize_ready;
wire  fifolz4OutSize_done;

`AESL_FIFO_lz4OutSize `AESL_FIFO_INST_lz4OutSize(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifolz4OutSize_wr),
    .if_din       (fifolz4OutSize_din),
    .if_full_n    (fifolz4OutSize_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifolz4OutSize_ready),
    .done         (fifolz4OutSize_done)
);

// Assignment between dut and fifolz4OutSize

// Assign input of fifolz4OutSize
assign      fifolz4OutSize_wr        =   lz4OutSize_write & lz4OutSize_full_n;
assign      fifolz4OutSize_din        =   lz4OutSize_din;
assign    fifolz4OutSize_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifolz4OutSize_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifolz4OutSize_full_n;
initial begin : gen_reg_fifolz4OutSize_full_n_process
    integer proc_rand;
    reg_fifolz4OutSize_full_n = fifolz4OutSize_full_n;
    while (1) begin
        @ (fifolz4OutSize_full_n);
        reg_fifolz4OutSize_full_n = fifolz4OutSize_full_n;
    end
end

assign      lz4OutSize_full_n    =   reg_fifolz4OutSize_full_n;


//------------------------arraymax_lit_limit Instantiation--------------

// The input and output of arraymax_lit_limit
wire    arraymax_lit_limit_ce0, arraymax_lit_limit_ce1;
wire [4 - 1 : 0]    arraymax_lit_limit_we0, arraymax_lit_limit_we1;
wire    [2 : 0]    arraymax_lit_limit_address0, arraymax_lit_limit_address1;
wire    [31 : 0]    arraymax_lit_limit_din0, arraymax_lit_limit_din1;
wire    [31 : 0]    arraymax_lit_limit_dout0, arraymax_lit_limit_dout1;
wire    arraymax_lit_limit_ready;
wire    arraymax_lit_limit_done;

`AESL_MEM_max_lit_limit `AESL_MEM_INST_max_lit_limit(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraymax_lit_limit_ce0),
    .we0        (arraymax_lit_limit_we0),
    .address0   (arraymax_lit_limit_address0),
    .din0       (arraymax_lit_limit_din0),
    .dout0      (arraymax_lit_limit_dout0),
    .ce1        (arraymax_lit_limit_ce1),
    .we1        (arraymax_lit_limit_we1),
    .address1   (arraymax_lit_limit_address1),
    .din1       (arraymax_lit_limit_din1),
    .dout1      (arraymax_lit_limit_dout1),
    .ready      (arraymax_lit_limit_ready),
    .done    (arraymax_lit_limit_done)
);

// Assignment between dut and arraymax_lit_limit
assign arraymax_lit_limit_address0 = max_lit_limit_address0;
assign arraymax_lit_limit_ce0 = max_lit_limit_ce0;
assign arraymax_lit_limit_we0[0] = max_lit_limit_we0;
assign arraymax_lit_limit_we0[1] = max_lit_limit_we0;
assign arraymax_lit_limit_we0[2] = max_lit_limit_we0;
assign arraymax_lit_limit_we0[3] = max_lit_limit_we0;
assign arraymax_lit_limit_din0 = max_lit_limit_d0;
assign arraymax_lit_limit_we1 = 0;
assign arraymax_lit_limit_din1 = 0;
assign arraymax_lit_limit_ready= ready_initial | arraymax_lit_limit_done;
assign arraymax_lit_limit_done =    AESL_done_delay;


// The signal of port input_size
reg [31: 0] AESL_REG_input_size = 0;
assign input_size = AESL_REG_input_size;
initial begin : read_file_process_input_size
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [199  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_size,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_size);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_size);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port core_idx
reg [31: 0] AESL_REG_core_idx = 0;
assign core_idx = AESL_REG_core_idx;
initial begin : read_file_process_core_idx
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [199  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_core_idx,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_core_idx);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_core_idx);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_inStream;
reg [31:0] size_inStream;
reg [31:0] size_inStream_backup;
reg end_max_lit_limit;
reg [31:0] size_max_lit_limit;
reg [31:0] size_max_lit_limit_backup;
reg end_input_size;
reg [31:0] size_input_size;
reg [31:0] size_input_size_backup;
reg end_core_idx;
reg [31:0] size_core_idx;
reg [31:0] size_core_idx_backup;
reg end_lz4Out;
reg [31:0] size_lz4Out;
reg [31:0] size_lz4Out_backup;
reg end_lz4Out_eos;
reg [31:0] size_lz4Out_eos;
reg [31:0] size_lz4Out_eos_backup;
reg end_lz4OutSize;
reg [31:0] size_lz4OutSize;
reg [31:0] size_lz4OutSize_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_inStream_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream > internal_trans_num) begin
            inStream_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_inStream "../tv/stream_size/stream_size_in_inStream.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream
        integer fp_inStream;
        reg [127:0] token_inStream;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream = 0;
        end_inStream = 0;
        wait (AESL_reset === 0);
        
        fp_inStream = $fopen(`STREAM_SIZE_IN_inStream, "r");
        if(fp_inStream == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream);
            $finish;
        end
        read_token(fp_inStream, token_inStream); // should be [[[runtime]]]
        if (token_inStream != "[[[runtime]]]") begin
            $display("ERROR: token_inStream != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream = 0;
        size_inStream_backup = 0;
        while (size_inStream == 0 && end_inStream == 0) begin
            ap_c_n_tvin_trans_num_inStream = ap_c_n_tvin_trans_num_inStream + 1;
            read_token(fp_inStream, token_inStream); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream == "[[transaction]]") begin
                read_token(fp_inStream, token_inStream); // should be transaction number
                read_token(fp_inStream, token_inStream); // should be size for hls::stream
                ret = $sscanf(token_inStream, "%d", size_inStream);
                if (size_inStream > 0) begin
                    size_inStream_backup = size_inStream;
                end
                read_token(fp_inStream, token_inStream); // should be [[/transaction]]
            end else if (token_inStream == "[[[/runtime]]]") begin
                $fclose(fp_inStream);
                end_inStream = 1;
            end else begin
                $display("ERROR: unknown token_inStream");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream == 0) begin
                if (inStream_read == 1 && inStream_empty_n == 1) begin
                    if (size_inStream > 0) begin
                        size_inStream = size_inStream - 1;
                        while (size_inStream == 0 && end_inStream == 0) begin
                            ap_c_n_tvin_trans_num_inStream = ap_c_n_tvin_trans_num_inStream + 1;
                            read_token(fp_inStream, token_inStream); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream == "[[transaction]]") begin
                                read_token(fp_inStream, token_inStream); // should be transaction number
                                read_token(fp_inStream, token_inStream); // should be size for hls::stream
                                ret = $sscanf(token_inStream, "%d", size_inStream);
                                if (size_inStream > 0) begin
                                    size_inStream_backup = size_inStream;
                                end
                                read_token(fp_inStream, token_inStream); // should be [[/transaction]]
                            end else if (token_inStream == "[[[/runtime]]]") begin
                                size_inStream = size_inStream_backup;
                                $fclose(fp_inStream);
                                end_inStream = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_read == 1 && inStream_empty_n == 1) begin
                    if (size_inStream > 0) begin
                        size_inStream = size_inStream - 1;
                        if (size_inStream == 0) begin
                            ap_c_n_tvin_trans_num_inStream = ap_c_n_tvin_trans_num_inStream + 1;
                            size_inStream = size_inStream_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_lz4Out;

initial begin : dump_tvout_runtime_sign_lz4Out
    integer fp;
    dump_tvout_finish_lz4Out = 0;
    fp = $fopen(`AUTOTB_TVOUT_lz4Out_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_lz4Out_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_lz4Out_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_lz4Out_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_lz4Out = 1;
end


reg dump_tvout_finish_lz4Out_eos;

initial begin : dump_tvout_runtime_sign_lz4Out_eos
    integer fp;
    dump_tvout_finish_lz4Out_eos = 0;
    fp = $fopen(`AUTOTB_TVOUT_lz4Out_eos_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_lz4Out_eos_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_lz4Out_eos_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_lz4Out_eos_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_lz4Out_eos = 1;
end


reg dump_tvout_finish_lz4OutSize;

initial begin : dump_tvout_runtime_sign_lz4OutSize
    integer fp;
    dump_tvout_finish_lz4OutSize = 0;
    fp = $fopen(`AUTOTB_TVOUT_lz4OutSize_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_lz4OutSize_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_lz4OutSize_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_lz4OutSize_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_lz4OutSize = 1;
end


reg dump_tvout_finish_max_lit_limit;

initial begin : dump_tvout_runtime_sign_max_lit_limit
    integer fp;
    dump_tvout_finish_max_lit_limit = 0;
    fp = $fopen(`AUTOTB_TVOUT_max_lit_limit_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_max_lit_limit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_max_lit_limit_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_max_lit_limit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_max_lit_limit = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

// Dependence Check (WAR) "ap_enable_operation_86"(R:SV3-4) -> "ap_enable_operation_102"(W:SV5-5) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (WAR) "ap_enable_operation_87"(R:SV3-4) -> "ap_enable_operation_100"(W:SV5-5) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (WAR) "ap_enable_operation_88"(R:SV3-4) -> "ap_enable_operation_98"(W:SV5-5) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (WAR) "ap_enable_operation_89"(R:SV3-4) -> "ap_enable_operation_104"(W:SV5-5) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (RAW) "ap_enable_operation_98"(W:SV5-5) -> "ap_enable_operation_76"(R:SV3-4) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (RAW) "ap_enable_operation_100"(W:SV5-5) -> "ap_enable_operation_75"(R:SV3-4) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (RAW) "ap_enable_operation_102"(W:SV5-5) -> "ap_enable_operation_74"(R:SV3-4) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (RAW) "ap_enable_operation_104"(W:SV5-5) -> "ap_enable_operation_77"(R:SV3-4) @ `AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174

// Dependence Check (RAW) "ap_enable_operation_34"(W:SV2-2) -> "ap_enable_operation_55"(R:SV3-4) @ `AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169

// Dependence Check (RAW) "ap_enable_operation_34"(W:SV2-2) -> "ap_enable_operation_73"(R:SV3-4) @ `AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169

// Dependence Check (RAW) "ap_enable_operation_34"(W:SV2-2) -> "ap_enable_operation_84"(R:SV3-4) @ `AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169

// Dependence Check (WAR) "ap_enable_operation_86"(R:SV3-4) -> "ap_enable_operation_34"(W:SV2-2) @ `AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169

// Dependence Check (WAR) "ap_enable_operation_91"(R:SV3-4) -> "ap_enable_operation_34"(W:SV2-2) @ `AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169

// Dependence Check (WAR) "ap_enable_operation_95"(R:SV3-4) -> "ap_enable_operation_34"(W:SV2-2) @ `AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(~AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
