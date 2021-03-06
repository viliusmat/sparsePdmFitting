%
% Author & Copyright (C) 2017: Florian Bernard (f.bernardpi[at]gmail[dot]com)
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU Affero General Public License as published
% by the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Affero General Public License for more details.

% You should have received a copy of the GNU Affero General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%

clear;
close all;

load rectangle2d_pdm.mat

%% ANISO
params.etaNormalError = 8;
alphaAnsio = fitPdmAnisotropic(pdm, sparsePoints, params);

%% ISO
params.etaNormalError = 1;
alphaIso = fitPdmAnisotropic(pdm, sparsePoints, params);

%% ICP 
alphaIcp = fitPdmIcp(pdm, sparsePoints);