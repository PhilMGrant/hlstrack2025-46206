# 2025-10-31T13:46:36.676307700
import vitis

client = vitis.create_client()
client.set_workspace(path="PROJECT")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="IMPLEMENTATION")

comp = client.create_hls_component(name = "cholesky_test",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="cholesky_test")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="cholesky_test")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="CO_SIMULATION")

comp = client.get_component(name="cholesky_test")
comp.run(operation="CO_SIMULATION")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="IMPLEMENTATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

comp = client.get_component(name="cholesky_test")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

client.delete_component(name="cholesky_test")

comp = client.create_hls_component(name = "cholesky_test",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

