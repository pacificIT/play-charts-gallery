//
//  ChartsGalleryCustomBandSeries.m
//  ChartsGallery
//
//  Created by Daniel Allsop on 02/12/2014.
//
//  Copyright 2014 Scott Logic
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "ChartsGalleryCustomBandSeries.h"
#import "ChartsGalleryCustomLegendSymbol.h"

@interface ChartsGalleryCustomBandSeries ()

@property ShinobiChart *chart;
@property ChartsGalleryCustomLegendSymbol *customLegendSymbol;

@end

@implementation ChartsGalleryCustomBandSeries

- (instancetype)initWithChart:(ShinobiChart *)chart {
  self = [super init];
  if (self) {
    self.chart = chart;
    self.customLegendSymbol = [[ChartsGalleryCustomLegendSymbol alloc] initWithChart:self.chart andSeries:self];
  }
  return self;
}

- (SChartLegendSymbol *)blockSymbolForSeriesInLegend {
  return self.customLegendSymbol;
}

@end
