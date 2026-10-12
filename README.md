# IoT training: Node-RED + MQTT in GitHub Codespaces

Practise Node-RED in your web browser. Nothing is installed on your PC.

## Start (students)

1. Sign in to GitHub.
2. On this page click **Code → Codespaces → Create codespace on main**.
   The first start takes about 3–5 minutes.
3. When the terminal at the bottom is ready, type:

   ```
   bash start.sh
   ```

4. Open the **PORTS** tab, find port **1880** and click the **globe icon**.
   The Node-RED editor opens in a new browser tab.
5. Dashboard: add `/dashboard` to the end of that address.

## Load an exercise

In Node-RED: **Menu (☰) → Import → select a file to import** and choose a file
from the `flows` folder, or open the file here in the codespace, copy its text
and paste it into the Import box. Then click **Deploy**.

## Test MQTT

Open a second terminal (**+** in the terminal panel):

```
mosquitto_sub -t "plant/#" -v
```

and in a third terminal:

```
mosquitto_pub -t "plant/stores/freezer01/env" -m '{"temp":-18.2}'
```

## When you finish

Stop the codespace so it does not use your free hours:
**github.com/codespaces → ⋯ next to your codespace → Stop codespace**.
It also stops by itself after 30 minutes without activity.
Your flows are kept until you delete the codespace.
