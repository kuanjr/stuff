This one has to be built up slowly. I'm still learning how the soc works, so these checklists will morph over time. But it is necessary. When a case comes in, you need to know what to do, who to contact. Nothing can be left behind, and the checklist ensures that


 - CTI
 - How to troubleshoot nxlog
 - How to triage sus alarms
 - Keep a log of manpower changes in Ur team

#### How to troubleshoot heartbeat missed
- [ ] 1. See if logs are coming in
	- [ ] 1a. Check LR Web console
	- [ ] 1b. Check LR Console
	- [ ] 1c. Check LR SSH
- [ ] 2. Check if nxlog agents are down
- [ ] 3. Restart
	- [ ] Collector Component down: Restart System Monitor Service
	- [ ] Platform Manager Component down: Restart Alarming and Response Manager Service