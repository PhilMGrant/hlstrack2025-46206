# 2025-10-31T11:27:42.216164700
import vitis

client = vitis.create_client()
client.set_workspace(path="PROJECT")

comp = client.get_component(name="lz4_compress_configed")
comp.run(operation="IMPLEMENTATION")

comp = client.get_component(name="lz4_compress_test_Config")
comp.run(operation="IMPLEMENTATION")

comp = client.create_hls_component(name = "lz4_cmpress",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

comp = client.get_component(name="lz4_compress_test_Config")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

