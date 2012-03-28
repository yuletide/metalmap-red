/**********************************************************
 * Control Room
 **********************************************************/

@base: #230000;
@land-glow-old: #225160;
@land-glow: #225160;
@land-old: #0A202A;
@land: #111;
@boundaries-old: #0AF;
@boundaries: fadeout(#C00,40%);

Map { background-color:@base; }

.water-poly { polygon-fill:@base; }

#land::glow-inner[zoom>0] {
  line-color:@land-glow;
  line-width:1.2;
  line-join:round;
  line-opacity:0.4;
}
#land::glow-innermiddle[zoom>1] {
  line-color:@land-glow;
  line-width:2.5;
  line-join:round;
  line-opacity:0.2;
}
#land::glow-outermiddle[zoom>2] {
  line-color:@land-glow;
  line-width:5;
  line-join:round;
  line-opacity:0.1;
}
#land::glow-outer[zoom>3] {
  line-color:@land-glow;
  line-width:5;
  line-join:round;
  line-opacity:0.05;
}

#land[zoom>=0] {
  polygon-fill: @land;
  polygon-gamma:0.7;
}

#international_boundaries[zoom>1] {
  line-color:@boundaries;
  line-dasharray:1,1;
  line-width:0.5;
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom=7] { line-width:1.2; }
  [zoom=8] { line-width:1.4; }
  [zoom>8] { line-width:1.6; }
}

#subnational_boundaries[COUNTRYNAM='US'][zoom=4],
#subnational_boundaries[COUNTRYNAM='Canada'][zoom=4],
#subnational_boundaries[COUNTRYNAM='Australia'][zoom=4],
#map-units[zoom>4],
#subnational_boundaries[zoom>4] {
  line-color:@boundaries;
  line-dasharray:4,2;
  line-opacity:0.2;
  line-width:0.4;
  [zoom=5] { line-width:0.5; }
  [zoom=6] { line-width:0.6; }
  [zoom=7] { line-width:0.8; }
  [zoom=8] { line-width:1.0; }
  [zoom>8] { line-width:1.2; }
}

/*
#urban {
  polygon-fill:#9F6;
  polygon-opacity:0.1;
  line-color:#9F6;
  line-opacity:0.1;
  [zoom=3] { line-width:0.4; }
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom>6] { line-width:1.2; }
}*/