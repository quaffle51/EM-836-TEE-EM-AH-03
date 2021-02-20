# Octave only supports @CLASS, not classdef
# So use a struct plus functions as a substitute for a utilities class

global octavetex = struct();
octavetex.docdir = pwd();
try
    cd '/home/gordon/Dropbox/OU/M836/TMAs/TMA03/.';
catch
    arg_list = argv()
    if size(arg_list, 1) == 1 && arg_list{1} == '--manual'
    else
        error("Could not find directory .");
    end
end
if dir_in_loadpath(octavetex.docdir)
else
    addpath(octavetex.docdir);
end



octavetex.dependencies = {};
octavetex.created = {};
octavetex._context_raw = '';

function octavetex_formatter(argin)
    disp(argin);
end
octavetex.formatter = @(argin) octavetex_formatter(argin);

function octavetex_before()
end
octavetex.before = @() octavetex_before();

function octavetex_after()
end
octavetex.after = @() octavetex_after();

function octavetex_add_dependencies(varargin)
    global octavetex;
    for i = 1:length(varargin)
        octavetex.dependencies{end+1} = varargin{i};
    end
end
octavetex.add_dependencies = @(varargin) octavetex_add_dependencies(varargin{:});

function octavetex_add_created(varargin)
    global octavetex;
    for i = 1:length(varargin)
        octavetex.created{end+1} = varargin{i};
    end
end
octavetex.add_created = @(varargin) octavetex_add_created(varargin{:});

function octavetex_set_context(argin)
    global octavetex;
    if ~strcmp(argin, octavetex._context_raw)
        octavetex._context_raw = argin;
        hash = struct;
        argin_kv = strsplit(argin, ',');
        for i = 1:length(argin_kv)
            kv = strsplit(argin_kv{i}, '=');
            k = strtrim(kv{1});
            v = strtrim(kv{2});
            hash = setfield(hash, k, v);
        end
        octavetex.context = hash;
    end
end
octavetex.set_context = @(argin) octavetex_set_context(argin);

function out = octavetex_pt_to_in(argin)
    if ischar(argin)
        if length(argin) > 2 && argin(end-1:end) == 'pt'
            out = str2num(argin(1:end-2))/72.27;
        else
            out = str2num(argin)/72.27;
        end
    else
        out = argin/72.27;
    end
end
octavetex.pt_to_in = @(argin) octavetex_pt_to_in(argin);

function out = octavetex_pt_to_cm(argin)
    out = octavetex_pt_to_in(argin)*2.54;
end
octavetex.pt_to_cm = @(argin) octavetex_pt_to_cm(argin);

function out = octavetex_pt_to_mm(argin)
    out = octavetex_pt_to_in(argin)*25.4;
end
octavetex.pt_to_mm = @(argin) octavetex_pt_to_mm(argin);

function out = octavetex_pt_to_bp(argin)
    out = octavetex_pt_to_in(argin)*72;
end
octavetex.pt_to_bp = @(argin) octavetex_pt_to_bp(argin);

function octavetex_cleanup()
    global octavetex;
    fprintf(strcat('=>PYTHONTEX:DEPENDENCIES#', "\n"));
    for i = 1:length(octavetex.dependencies)
        fprintf(strcat(octavetex.dependencies{i}, "\n"));
    end
    fprintf(strcat('=>PYTHONTEX:CREATED#', "\n"));
    for i = 1:length(octavetex.created)
        fprintf(strcat(octavetex.created{i}, "\n"));
    end
end
octavetex.cleanup = @() octavetex_cleanup();

octavetex.id = 'octave_default_0';
octavetex.family = 'octave';
octavetex.session = 'default';
octavetex.restart = '0';

octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '0';
octavetex.line = '3';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#0#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#0#code#', "\n"));
function f = binom(n, k);
  f = int64(factorial(n)/(factorial(n-k)*factorial(k)));
endfunction
octavetex.after()
octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '1';
octavetex.line = '8';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#1#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#1#code#', "\n"));
n = 90;
d = 5;
k = 73;
q = 2;
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '2';
octavetex.line = '19';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#2#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#2#c#', "\n"));
disp(q)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '3';
octavetex.line = '19';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#3#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#3#c#', "\n"));
disp(n)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '4';
octavetex.line = '19';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#4#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#4#c#', "\n"));
disp(k)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '5';
octavetex.line = '19';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#5#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#5#c#', "\n"));
disp(d)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '6';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#6#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#6#c#', "\n"));
disp(d)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '7';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#7#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#7#c#', "\n"));
disp(q)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '8';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#8#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#8#c#', "\n"));
disp(n)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '9';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#9#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#9#c#', "\n"));
disp(n)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '10';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#10#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#10#c#', "\n"));
disp(k)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '11';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#11#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#11#c#', "\n"));
disp(d-2)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '12';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#12#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#12#c#', "\n"));
disp(n-1)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '13';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#13#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#13#c#', "\n"));
disp(n-k)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '14';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#14#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#14#c#', "\n"));
disp(binom(n-1,0))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '15';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#15#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#15#c#', "\n"));
disp(binom(n-1,1))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '16';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#16#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#16#c#', "\n"));
disp(binom(n-1,2))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '17';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#17#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#17#c#', "\n"));
disp(binom(n-1,3))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '18';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#18#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#18#c#', "\n"));
disp( binom(n-1,0) + binom(n-1,1) + binom(n-1,2) + binom(n-1,3) ) 
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '19';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#19#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#19#c#', "\n"));
disp(2^(n-k))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '20';
octavetex.line = '30';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#20#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#20#c#', "\n"));
disp(n-k)
octavetex.after()
octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '21';
octavetex.line = '59';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#21#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#21#code#', "\n"));
v = [1 1 0 0 1 1 1 0 0 1 0 0 0 0 0];
w = flip(w = 2.^[0:14]);
z = sum(v.*w);
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '22';
octavetex.line = '63';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#22#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#22#c#', "\n"));
disp(z)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '23';
octavetex.line = '107';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#23#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#23#c#', "\n"));
disp(binom(15,0))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '24';
octavetex.line = '107';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#24#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#24#c#', "\n"));
disp(binom(15,1))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '25';
octavetex.line = '107';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#25#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#25#c#', "\n"));
disp(binom(15,2))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '26';
octavetex.line = '107';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#26#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#26#c#', "\n"));
disp(binom(15,3))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '27';
octavetex.line = '113';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#27#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#27#c#', "\n"));
disp(binom(15,0) +               binom(15,1) +               binom(15,2) +               binom(15,3)              )         
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '28';
octavetex.line = '120';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#28#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#28#c#', "\n"));
disp(binom(15,0) +               binom(15,1) +               binom(15,2) +               binom(15,3)              )         
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '29';
octavetex.line = '125';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#29#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#29#c#', "\n"));
disp(binom(15,0) +               binom(15,1) +               binom(15,2) +               binom(15,3)              )         
octavetex.after()
octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '30';
octavetex.line = '4';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#30#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#30#code#', "\n"));
function [c c1 c2 c3 c4 c5 c6 d e] = F;
  c1 = [1 1 0 0 1 1 0];
  c2 = [1 0 0 1 1 0 0];
  c3 = [0 0 1 0 1 1 0];
  c4 = [0 1 1 1 1 0 0];
  c5 = [1 1 1 1 1 1 1];
  c6 = [0 0 0 1 1 1 1];
  c = [c1;c2;c3;c4;c5;c6];

  d = [c(1,:);c(2,:); c(3,:)];
  e = [c(4,:);c(5,:); c(6,:)];
endfunction

[c c1 c2 c3 c4 c5 c6 d e] = F;
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '31';
octavetex.line = '23';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#31#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#31#c#', "\n"));
disp(c1)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '32';
octavetex.line = '23';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#32#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#32#c#', "\n"));
disp(c4)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '33';
octavetex.line = '23';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#33#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#33#c#', "\n"));
disp(c2)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '34';
octavetex.line = '23';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#34#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#34#c#', "\n"));
disp(c5)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '35';
octavetex.line = '23';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#35#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#35#c#', "\n"));
disp(c3)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '36';
octavetex.line = '23';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#36#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#36#c#', "\n"));
disp(c6)
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '37';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#37#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#37#c#', "\n"));
disp(d'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '38';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#38#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#38#c#', "\n"));
disp(d'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '39';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#39#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#39#c#', "\n"));
disp(d'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '40';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#40#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#40#c#', "\n"));
disp(d'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '41';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#41#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#41#c#', "\n"));
disp(d'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '42';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#42#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#42#c#', "\n"));
disp(d'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '43';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#43#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#43#c#', "\n"));
disp(d'(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '44';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#44#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#44#c#', "\n"));
disp(e'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '45';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#45#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#45#c#', "\n"));
disp(e'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '46';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#46#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#46#c#', "\n"));
disp(e'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '47';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#47#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#47#c#', "\n"));
disp(e'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '48';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#48#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#48#c#', "\n"));
disp(e'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '49';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#49#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#49#c#', "\n"));
disp(e'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '50';
octavetex.line = '24';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#50#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#50#c#', "\n"));
disp(e'(7,:))
octavetex.after()
octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '51';
octavetex.line = '3';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#51#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#51#code#', "\n"));
function [cols f_frame] = H;
  c1 = [1 1 0 0 1 1 0];
  c2 = [1 0 0 1 1 0 0];
  c3 = [0 0 1 0 1 1 0];
  c4 = [0 1 1 1 1 0 0];
  c5 = [1 1 1 1 1 1 1];
  c6 = [0 0 0 1 1 1 1];
  c = [c1;c2;c3;c4;c5;c6];
  cols = [];
  for i = 1:size(c1,2)
    col = [];
    for j = 1:6
      col = [col c(j,i)];
    endfor
    cols = [cols; col];
  endfor


  f_frame = [];
  f_frame = [f_frame; zeros(1, 0) cols(1,:) zeros(1,12)];
  f_frame = [f_frame; zeros(1, 2) cols(2,:) zeros(1,10)];
  f_frame = [f_frame; zeros(1, 4) cols(3,:) zeros(1, 8)];
  f_frame = [f_frame; zeros(1, 6) cols(4,:) zeros(1, 6)];
  f_frame = [f_frame; zeros(1, 8) cols(5,:) zeros(1, 4)];
  f_frame = [f_frame; zeros(1,10) cols(6,:) zeros(1, 2)];
  f_frame = [f_frame; zeros(1,12) cols(7,:) zeros(1, 0)];
endfunction

[cols f_frame] = H;
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '52';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#52#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#52#c#', "\n"));
disp(f_frame(:,1)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '53';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#53#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#53#c#', "\n"));
disp(f_frame(:,2)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '54';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#54#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#54#c#', "\n"));
disp(f_frame(:,3)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '55';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#55#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#55#c#', "\n"));
disp(f_frame(:,4)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '56';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#56#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#56#c#', "\n"));
disp(f_frame(:,5)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '57';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#57#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#57#c#', "\n"));
disp(f_frame(:,6)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '58';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#58#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#58#c#', "\n"));
disp(f_frame(:,7)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '59';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#59#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#59#c#', "\n"));
disp(f_frame(:,8)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '60';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#60#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#60#c#', "\n"));
disp(f_frame(:,9)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '61';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#61#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#61#c#', "\n"));
disp(f_frame(:,10)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '62';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#62#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#62#c#', "\n"));
disp(f_frame(:,11)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '63';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#63#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#63#c#', "\n"));
disp(f_frame(:,12)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '64';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#64#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#64#c#', "\n"));
disp(f_frame(:,13)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '65';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#65#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#65#c#', "\n"));
disp(f_frame(:,14)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '66';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#66#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#66#c#', "\n"));
disp(f_frame(:,15)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '67';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#67#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#67#c#', "\n"));
disp(f_frame(:,16)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '68';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#68#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#68#c#', "\n"));
disp(f_frame(:,17)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '69';
octavetex.line = '65';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#69#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#69#c#', "\n"));
disp(f_frame(:,18)')
octavetex.after()
octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '70';
octavetex.line = '40';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#70#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#70#code#', "\n"));
function [c d m] = q4c;
  G2 = [1 1 1 1 1 1 1 1;
        0 1 0 1 0 1 0 1;
        0 0 1 1 0 0 1 1;
        0 0 0 0 1 1 1 1
       ];

  G1 = [1 1 1 1 1 1 1];

  m  = [1 0 1 1  0 1 1 0   0 0 0 0];
  c  = [];
  d  = [];
  for i = 1:size(m,2)
    c = [c; mod(m(1,i).*G1,2)];
  endfor
  for i = 1:7
  	d = [d; mod(c([1:4],i)' * G2,2)];
  endfor
  for i = 1:7
  	d = [d; mod(c([5:8],i)' * G2,2)];
  endfor
  for i = 1:7
  	d = [d; mod(c([9:12],i)' * G2,2)];
  endfor

endfunction
[c d m] = q4c;
octavetex.after()
octavetex.command = 'code';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '71';
octavetex.line = '158';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#71#code#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#71#code#', "\n"));
function [d C2] = q4c_1;
  d = [1 1 0 0 0 0 1 1;
       1 1 0 0 0 0 1 1;
       1 1 0 0 0 0 1 1;

       1 1 0 0 1 1 0 1;
       1 1 0 0 1 1 0 1;
       1 1 0 0 1 1 0 1;

       1 1 0 0 0 0 1 1;
       0 1 1 0 0 1 1 0;
       0 1 1 0 0 1 1 0;

       0 1 1 0 0 1 1 0;
       0 1 1 0 0 1 1 0;
       0 1 1 0 0 1 1 0;

       0 1 1 0 0 1 1 0;
       0 1 1 0 0 1 1 0;
       0 0 0 0 0 0 0 0
      ];

  G2 = [1 1 1 1 1 1 1 1;
        0 1 0 1 0 1 0 1;
        0 0 1 1 0 0 1 1;
        0 0 0 0 1 1 1 1
       ];

  C2 = [];

  for i = 0:1
    for j = 0:1
      for k = 0:1
        for l = 0:1
          C2 = [C2; mod([i j k l]*G2,2)];
        endfor
      endfor
    endfor
  endfor
endfunction
[d C2] = q4c_1;
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '72';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#72#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#72#c#', "\n"));
disp(d([1:3],:)'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '73';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#73#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#73#c#', "\n"));
disp(d([1:3],:)'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '74';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#74#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#74#c#', "\n"));
disp(d([1:3],:)'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '75';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#75#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#75#c#', "\n"));
disp(d([1:3],:)'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '76';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#76#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#76#c#', "\n"));
disp(d([1:3],:)'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '77';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#77#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#77#c#', "\n"));
disp(d([1:3],:)'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '78';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#78#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#78#c#', "\n"));
disp(d([1:3],:)'(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '79';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#79#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#79#c#', "\n"));
disp(d([1:3],:)'(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '80';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#80#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#80#c#', "\n"));
disp(d([4:6],:)'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '81';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#81#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#81#c#', "\n"));
disp(d([4:6],:)'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '82';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#82#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#82#c#', "\n"));
disp(d([4:6],:)'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '83';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#83#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#83#c#', "\n"));
disp(d([4:6],:)'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '84';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#84#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#84#c#', "\n"));
disp(d([4:6],:)'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '85';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#85#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#85#c#', "\n"));
disp(d([4:6],:)'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '86';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#86#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#86#c#', "\n"));
disp(d([4:6],:)'(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '87';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#87#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#87#c#', "\n"));
disp(d([4:6],:)'(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '88';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#88#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#88#c#', "\n"));
disp(d([7:9],:)'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '89';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#89#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#89#c#', "\n"));
disp(d([7:9],:)'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '90';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#90#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#90#c#', "\n"));
disp(d([7:9],:)'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '91';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#91#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#91#c#', "\n"));
disp(d([7:9],:)'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '92';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#92#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#92#c#', "\n"));
disp(d([7:9],:)'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '93';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#93#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#93#c#', "\n"));
disp(d([7:9],:)'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '94';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#94#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#94#c#', "\n"));
disp(d([7:9],:)'(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '95';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#95#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#95#c#', "\n"));
disp(d([7:9],:)'(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '96';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#96#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#96#c#', "\n"));
disp(d([10:12],:)'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '97';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#97#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#97#c#', "\n"));
disp(d([10:12],:)'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '98';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#98#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#98#c#', "\n"));
disp(d([10:12],:)'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '99';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#99#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#99#c#', "\n"));
disp(d([10:12],:)'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '100';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#100#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#100#c#', "\n"));
disp(d([10:12],:)'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '101';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#101#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#101#c#', "\n"));
disp(d([10:12],:)'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '102';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#102#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#102#c#', "\n"));
disp(d([10:12],:)'(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '103';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#103#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#103#c#', "\n"));
disp(d([10:12],:)'(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '104';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#104#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#104#c#', "\n"));
disp(d([13:15],:)'(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '105';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#105#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#105#c#', "\n"));
disp(d([13:15],:)'(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '106';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#106#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#106#c#', "\n"));
disp(d([13:15],:)'(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '107';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#107#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#107#c#', "\n"));
disp(d([13:15],:)'(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '108';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#108#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#108#c#', "\n"));
disp(d([13:15],:)'(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '109';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#109#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#109#c#', "\n"));
disp(d([13:15],:)'(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '110';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#110#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#110#c#', "\n"));
disp(d([13:15],:)'(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '111';
octavetex.line = '221';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#111#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#111#c#', "\n"));
disp(d([13:15],:)'(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '112';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#112#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#112#c#', "\n"));
disp(d(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '113';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#113#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#113#c#', "\n"));
disp(d(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '114';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#114#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#114#c#', "\n"));
disp(d(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '115';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#115#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#115#c#', "\n"));
disp(d(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '116';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#116#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#116#c#', "\n"));
disp(d(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '117';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#117#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#117#c#', "\n"));
disp(d(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '118';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#118#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#118#c#', "\n"));
disp(d(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '119';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#119#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#119#c#', "\n"));
disp(d(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '120';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#120#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#120#c#', "\n"));
disp(d(9,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '121';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#121#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#121#c#', "\n"));
disp(d(10,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '122';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#122#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#122#c#', "\n"));
disp(d(11,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '123';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#123#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#123#c#', "\n"));
disp(d(12,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '124';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#124#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#124#c#', "\n"));
disp(d(13,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '125';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#125#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#125#c#', "\n"));
disp(d(14,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '126';
octavetex.line = '239';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#126#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#126#c#', "\n"));
disp(d(15,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '127';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#127#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#127#c#', "\n"));
disp(C2(1,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '128';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#128#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#128#c#', "\n"));
disp(C2(2,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '129';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#129#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#129#c#', "\n"));
disp(C2(3,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '130';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#130#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#130#c#', "\n"));
disp(C2(4,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '131';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#131#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#131#c#', "\n"));
disp(C2(5,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '132';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#132#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#132#c#', "\n"));
disp(C2(6,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '133';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#133#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#133#c#', "\n"));
disp(C2(7,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '134';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#134#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#134#c#', "\n"));
disp(C2(8,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '135';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#135#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#135#c#', "\n"));
disp(C2(9,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '136';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#136#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#136#c#', "\n"));
disp(C2(10,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '137';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#137#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#137#c#', "\n"));
disp(C2(11,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '138';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#138#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#138#c#', "\n"));
disp(C2(12,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '139';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#139#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#139#c#', "\n"));
disp(C2(13,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '140';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#140#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#140#c#', "\n"));
disp(C2(14,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '141';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#141#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#141#c#', "\n"));
disp(C2(15,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '142';
octavetex.line = '258';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#142#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#142#c#', "\n"));
disp(C2(16,:))
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '143';
octavetex.line = '261';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#143#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#143#c#', "\n"));
disp(c([1:4],1)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '144';
octavetex.line = '262';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#144#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#144#c#', "\n"));
disp(c([1:4],2)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '145';
octavetex.line = '263';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#145#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#145#c#', "\n"));
disp(c([1:4],3)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '146';
octavetex.line = '268';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#146#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#146#c#', "\n"));
disp(c([1:4],7)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '147';
octavetex.line = '269';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#147#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#147#c#', "\n"));
disp(c([5:8],1)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '148';
octavetex.line = '270';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#148#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#148#c#', "\n"));
disp(c([5:8],2)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '149';
octavetex.line = '271';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#149#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#149#c#', "\n"));
disp(c([5:8],3)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '150';
octavetex.line = '272';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#150#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#150#c#', "\n"));
disp(c([5:8],4)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '151';
octavetex.line = '273';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#151#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#151#c#', "\n"));
disp(c([5:8],5)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '152';
octavetex.line = '274';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#152#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#152#c#', "\n"));
disp(c([5:8],6)')
octavetex.after()
octavetex.command = 'c';
octavetex.set_context('');
octavetex.args = '';
octavetex.instance = '153';
octavetex.line = '275';

octavetex.before()

fprintf(strcat('=>PYTHONTEX:STDOUT#153#c#', "\n"));
fprintf(stderr, strcat('=>PYTHONTEX:STDERR#153#c#', "\n"));
disp(c([5:8],7)')
octavetex.after()


octavetex.cleanup()
