# 2025-10-22T15:32:06.443950200
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

comp = client.get_component(name="lz4_compress_test")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

