# 2025-11-02T11:29:34.544222200
import vitis

client = vitis.create_client()
client.set_workspace(path="hlstrack2025")

comp = client.get_component(name="cholesky_test")
comp.run(operation="IMPLEMENTATION")

vitis.dispose()

