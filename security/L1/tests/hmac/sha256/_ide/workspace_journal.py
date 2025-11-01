# 2025-10-22T15:05:00.303934800
import vitis

client = vitis.create_client()
client.set_workspace(path="sha256")

comp = client.get_component(name="hmac_sha256_test")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

