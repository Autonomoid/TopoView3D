% Each data file contains a 200x200 grid covering 10x10 Km at 50m intervals.
% E.g. Ben More @ NN 43- 24- is within file nn42.
% The second digits are in Km. Hence, second digits * 20 give the xy indces.
function plotGridSquareWithPadding(gridReference, padding)
    square = substr(gridReference, 1, 2);

    datadir = strcat("data/", square);
    datadir = strcat(datadir, "/");

    x1 = str2num(substr(gridReference, 3, 1));
    x2 = str2num(substr(gridReference, 4, 1));
    y1 = str2num(substr(gridReference, 5, 1));
    y2 = str2num(substr(gridReference, 6, 1));
   

    if (y1 - padding >= 0)
        ymin = y1 - padding;
    else
        ymin = y1;
    end

    if (y1 + padding <= 9)
        ymax = y1 + padding;
    else
        ymax = y1;
    end

    if (x1 - padding >= 0)
        xmin = x1 - padding;
    else
        xmin = x1;
    end

    if (x1 + padding <= 9)
        xmax = x1 + padding;
    else
        xmax = x1;
    end

    tile = createTile(datadir, square, xmin, xmax, ymin, ymax);
    plotTile(tile)   
endfunction
