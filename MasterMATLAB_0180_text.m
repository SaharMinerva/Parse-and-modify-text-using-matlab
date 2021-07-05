%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Vectors and variables
%      VIDEO: Working with text (characters and strings) 
% Instructor: mikexcohen.com
%
%%

wholetext = 'Hello my name is Mike and I like purple.';

% separate into a cell array based on spaces
wordsep = regexp(wholetext,' ','split')

% remove any words with exactly 4 characters
numchars   = cellfun(@length,wordsep)
words2keep = numchars ~=4 ;%here we created a logical array. Any word that is not 4 will stay
wordsep2   = wordsep(words2keep)

% replace 'Mike' with your name and 'purple' with your favorite color from
% the wholetext variable 
targname  = 'Mike';
targcolor = 'purple';

%% we will use strfind which will find pattern in a character vector 
namestart  = strfind(wholetext,targname);
colorstart = strfind(wholetext,targcolor);
newtext = [wholetext(1:namestart-1) 'Sahar' wholetext(namestart+length(targname):colorstart-1) 'blue' ...
    wholetext(colorstart+length(targcolor):end)]; 