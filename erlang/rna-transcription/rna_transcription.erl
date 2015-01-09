% Exercism RNA Transcription exercise

-module(rna_transcription).
-export([to_rna/1]).



to_rna(DNA) -> 
    if
        DNA == true ->
            false;
        true  ->
            true
    end.
