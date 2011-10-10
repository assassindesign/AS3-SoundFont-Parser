/* This is the frequency, in absolute cents, of the Modulation LFO’s triangular period. A value of zero indicates a
 * frequency of 8.176 Hz. A negative value indicates a frequency less than 8.176 Hz; a positive value a frequency
 * greater than 8.176 Hz. For example, a frequency of 10 mHz would be 1200log2(.01/8.176) = -11610. */
package com.ferretgodmother.soundfont.chunks.data.operators
{
    import com.ferretgodmother.soundfont.chunks.data.GeneratorsSubchunk;

    public class FrequencyModulationLFO extends ValueOperator
    {
        public function FrequencyModulationLFO(amount:int = 0)
        {
            super(Operator.FREQ_MOD_LFO, amount);
        }
    }
}
