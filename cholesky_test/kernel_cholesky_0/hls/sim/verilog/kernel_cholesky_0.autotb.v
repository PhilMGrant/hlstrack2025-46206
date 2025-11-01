// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      kernel_cholesky_0
`define AUTOTB_DUT_INST AESL_inst_kernel_cholesky_0
`define AUTOTB_TOP      apatb_kernel_cholesky_0_top
`define AUTOTB_LAT_RESULT_FILE "kernel_cholesky_0.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "kernel_cholesky_0.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_kernel_cholesky_0_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 3.00

`define AESL_FIFO_matrixAStrm AESL_autofifo_matrixAStrm
`define AESL_FIFO_INST_matrixAStrm AESL_autofifo_inst_matrixAStrm
`define AESL_FIFO_matrixLStrm AESL_autofifo_matrixLStrm
`define AESL_FIFO_INST_matrixLStrm AESL_autofifo_inst_matrixLStrm
`define AUTOTB_TVIN_matrixAStrm  "../tv/cdatafile/c.kernel_cholesky_0.autotvin_matrixAStrm.dat"
`define AUTOTB_TVIN_matrixAStrm_out_wrapc  "../tv/rtldatafile/rtl.kernel_cholesky_0.autotvin_matrixAStrm.dat"
`define AUTOTB_TVOUT_matrixLStrm  "../tv/cdatafile/c.kernel_cholesky_0.autotvout_matrixLStrm.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.kernel_cholesky_0.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_matrixLStrm_out_wrapc  "../tv/rtldatafile/rtl.kernel_cholesky_0.autotvout_matrixLStrm.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.kernel_cholesky_0.autotvout_ap_return.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 8;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 528;
parameter LENGTH_ap_return = 1;
parameter LENGTH_matrixAStrm = 9;
parameter LENGTH_matrixLStrm = 9;

task read_token;
    input integer fp;
    output reg [175 : 0] token;
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
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] matrixAStrm_dout;
wire  matrixAStrm_empty_n;
wire  matrixAStrm_read;
wire [31 : 0] matrixLStrm_din;
wire  matrixLStrm_full_n;
wire  matrixLStrm_write;
wire [31 : 0] ap_return;
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
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .matrixAStrm_dout(matrixAStrm_dout),
    .matrixAStrm_empty_n(matrixAStrm_empty_n),
    .matrixAStrm_read(matrixAStrm_read),
    .matrixLStrm_din(matrixLStrm_din),
    .matrixLStrm_full_n(matrixLStrm_full_n),
    .matrixLStrm_write(matrixLStrm_write),
    .ap_return(ap_return));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
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
// Fifo Instantiation matrixAStrm

wire fifomatrixAStrm_rd;
wire [31 : 0] fifomatrixAStrm_dout;
wire fifomatrixAStrm_empty_n;
wire fifomatrixAStrm_ready;
wire fifomatrixAStrm_done;
reg [31:0] ap_c_n_tvin_trans_num_matrixAStrm;
reg matrixAStrm_ready_reg;

`AESL_FIFO_matrixAStrm `AESL_FIFO_INST_matrixAStrm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifomatrixAStrm_rd),
    .if_dout      (fifomatrixAStrm_dout),
    .if_empty_n   (fifomatrixAStrm_empty_n),
    .ready        (fifomatrixAStrm_ready),
    .done         (fifomatrixAStrm_done)
);

// Assignment between dut and fifomatrixAStrm

// Assign input of fifomatrixAStrm
assign      fifomatrixAStrm_rd        =   matrixAStrm_read & matrixAStrm_empty_n;
assign    fifomatrixAStrm_ready   =   matrixAStrm_ready_reg | ready_initial;
assign    fifomatrixAStrm_done    =   0;
// Assign input of dut
assign      matrixAStrm_dout       =   fifomatrixAStrm_dout;
reg   reg_fifomatrixAStrm_empty_n;
initial begin : gen_reg_fifomatrixAStrm_empty_n_process
    integer proc_rand;
    reg_fifomatrixAStrm_empty_n = fifomatrixAStrm_empty_n;
    while (1) begin
        @ (fifomatrixAStrm_empty_n);
        reg_fifomatrixAStrm_empty_n = fifomatrixAStrm_empty_n;
    end
end

assign      matrixAStrm_empty_n    =   reg_fifomatrixAStrm_empty_n;


//------------------------FifomatrixLStrm Instantiation--------------

// The input and output of fifomatrixLStrm
wire  fifomatrixLStrm_wr;
wire  [31 : 0] fifomatrixLStrm_din;
wire  fifomatrixLStrm_full_n;
wire  fifomatrixLStrm_ready;
wire  fifomatrixLStrm_done;

`AESL_FIFO_matrixLStrm `AESL_FIFO_INST_matrixLStrm(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifomatrixLStrm_wr),
    .if_din       (fifomatrixLStrm_din),
    .if_full_n    (fifomatrixLStrm_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifomatrixLStrm_ready),
    .done         (fifomatrixLStrm_done)
);

// Assignment between dut and fifomatrixLStrm

// Assign input of fifomatrixLStrm
assign      fifomatrixLStrm_wr        =   matrixLStrm_write & matrixLStrm_full_n;
assign      fifomatrixLStrm_din        =   matrixLStrm_din;
assign    fifomatrixLStrm_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifomatrixLStrm_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifomatrixLStrm_full_n;
initial begin : gen_reg_fifomatrixLStrm_full_n_process
    integer proc_rand;
    reg_fifomatrixLStrm_full_n = fifomatrixLStrm_full_n;
    while (1) begin
        @ (fifomatrixLStrm_full_n);
        reg_fifomatrixLStrm_full_n = fifomatrixLStrm_full_n;
    end
end

assign      matrixLStrm_full_n    =   reg_fifomatrixLStrm_full_n;


initial begin : write_file_process_ap_return
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer ap_return_count;
    reg [175:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
          $fdisplay(fp,"0x%x", ap_return);
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
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


reg end_matrixAStrm;
reg [31:0] size_matrixAStrm;
reg [31:0] size_matrixAStrm_backup;
reg end_matrixLStrm;
reg [31:0] size_matrixLStrm;
reg [31:0] size_matrixLStrm_backup;
reg end_ap_return;
reg [31:0] size_ap_return;
reg [31:0] size_ap_return_backup;

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
initial begin : proc_gen_matrixAStrm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    matrixAStrm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_matrixAStrm > internal_trans_num) begin
            matrixAStrm_ready_reg <= 1;
            @(posedge AESL_clock);
            matrixAStrm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    matrixAStrm_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_matrixAStrm "../tv/stream_size/stream_size_in_matrixAStrm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_matrixAStrm
        integer fp_matrixAStrm;
        reg [127:0] token_matrixAStrm;
        integer ret;
        
        ap_c_n_tvin_trans_num_matrixAStrm = 0;
        end_matrixAStrm = 0;
        wait (AESL_reset === 0);
        
        fp_matrixAStrm = $fopen(`STREAM_SIZE_IN_matrixAStrm, "r");
        if(fp_matrixAStrm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_matrixAStrm);
            $finish;
        end
        read_token(fp_matrixAStrm, token_matrixAStrm); // should be [[[runtime]]]
        if (token_matrixAStrm != "[[[runtime]]]") begin
            $display("ERROR: token_matrixAStrm != \"[[[runtime]]]\"");
            $finish;
        end
        size_matrixAStrm = 0;
        size_matrixAStrm_backup = 0;
        while (size_matrixAStrm == 0 && end_matrixAStrm == 0) begin
            ap_c_n_tvin_trans_num_matrixAStrm = ap_c_n_tvin_trans_num_matrixAStrm + 1;
            read_token(fp_matrixAStrm, token_matrixAStrm); // should be [[transaction]] or [[[/runtime]]]
            if (token_matrixAStrm == "[[transaction]]") begin
                read_token(fp_matrixAStrm, token_matrixAStrm); // should be transaction number
                read_token(fp_matrixAStrm, token_matrixAStrm); // should be size for hls::stream
                ret = $sscanf(token_matrixAStrm, "%d", size_matrixAStrm);
                if (size_matrixAStrm > 0) begin
                    size_matrixAStrm_backup = size_matrixAStrm;
                end
                read_token(fp_matrixAStrm, token_matrixAStrm); // should be [[/transaction]]
            end else if (token_matrixAStrm == "[[[/runtime]]]") begin
                $fclose(fp_matrixAStrm);
                end_matrixAStrm = 1;
            end else begin
                $display("ERROR: unknown token_matrixAStrm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_matrixAStrm == 0) begin
                if (matrixAStrm_read == 1 && matrixAStrm_empty_n == 1) begin
                    if (size_matrixAStrm > 0) begin
                        size_matrixAStrm = size_matrixAStrm - 1;
                        while (size_matrixAStrm == 0 && end_matrixAStrm == 0) begin
                            ap_c_n_tvin_trans_num_matrixAStrm = ap_c_n_tvin_trans_num_matrixAStrm + 1;
                            read_token(fp_matrixAStrm, token_matrixAStrm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_matrixAStrm == "[[transaction]]") begin
                                read_token(fp_matrixAStrm, token_matrixAStrm); // should be transaction number
                                read_token(fp_matrixAStrm, token_matrixAStrm); // should be size for hls::stream
                                ret = $sscanf(token_matrixAStrm, "%d", size_matrixAStrm);
                                if (size_matrixAStrm > 0) begin
                                    size_matrixAStrm_backup = size_matrixAStrm;
                                end
                                read_token(fp_matrixAStrm, token_matrixAStrm); // should be [[/transaction]]
                            end else if (token_matrixAStrm == "[[[/runtime]]]") begin
                                size_matrixAStrm = size_matrixAStrm_backup;
                                $fclose(fp_matrixAStrm);
                                end_matrixAStrm = 1;
                            end else begin
                                $display("ERROR: unknown token_matrixAStrm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (matrixAStrm_read == 1 && matrixAStrm_empty_n == 1) begin
                    if (size_matrixAStrm > 0) begin
                        size_matrixAStrm = size_matrixAStrm - 1;
                        if (size_matrixAStrm == 0) begin
                            ap_c_n_tvin_trans_num_matrixAStrm = ap_c_n_tvin_trans_num_matrixAStrm + 1;
                            size_matrixAStrm = size_matrixAStrm_backup;
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

reg dump_tvout_finish_matrixLStrm;

initial begin : dump_tvout_runtime_sign_matrixLStrm
    integer fp;
    dump_tvout_finish_matrixLStrm = 0;
    fp = $fopen(`AUTOTB_TVOUT_matrixLStrm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_matrixLStrm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_matrixLStrm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_matrixLStrm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_matrixLStrm = 1;
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

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
