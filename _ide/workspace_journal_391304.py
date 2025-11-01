# 2025-10-31T13:30:53.359744100
import vitis

client = vitis.create_client()
client.set_workspace(path="PROJECT")

comp = client.get_component(name="lz4_cmpress")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

