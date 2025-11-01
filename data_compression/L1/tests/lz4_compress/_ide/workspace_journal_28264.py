# 2025-10-22T15:18:11.818190500
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

comp = client.create_hls_component(name = "lz4_compress_test",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="lz4_compress_test")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

