# 2025-10-22T21:58:13.540035
import vitis

client = vitis.create_client()
client.set_workspace(path="PROJECT")

comp = client.get_component(name="cholesky_test")
comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

client.delete_component(name="cholesky_test")

vitis.dispose()

