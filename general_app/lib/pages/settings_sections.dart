import 'package:flutter/material.dart';

class Section {
  Icon sectionIcon;
  String sectionHeader;
  String tagline;

  Section(this.sectionIcon, this.sectionHeader, this.tagline);
}

List<Section> settingsSection = [
  Section(
    const Icon(Icons.phone_android),
    "My Phone",
    "Infinix HOT 11 Play",
  ),
  Section(
    const Icon(Icons.sim_card),
    "SIM Card and Mobile Network",
    "Mobile data, Data settings",
  ),
  Section(const Icon(Icons.wifi), "Wi-Fi", "Not connected"),
];
