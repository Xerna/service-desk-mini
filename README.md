# Service Desk Mini App

A Salesforce mini-application to manage support cases,
built to practice Apex, LWC, Flows, and REST integrations.

## Features
- LWC component to create and view Cases
- Apex controller with @AuraEnabled methods
- Trigger with Handler pattern for auto-priority
- Flow to escalate high-priority cases
- Python Flask webhook for external integration

## Tech Stack
Apex · LWC · Flow · SOQL · Python Flask · Salesforce CLI · Git

## Setup
1. Clone this repo
2. Run `sf org login web`
3. Run `sf project deploy start --source-dir force-app`