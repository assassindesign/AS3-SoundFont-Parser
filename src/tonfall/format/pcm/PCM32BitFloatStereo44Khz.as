package tonfall.format.pcm
{
	import tonfall.core.Signal;

	import flash.utils.ByteArray;

	/**
	 * @author Andre Michelle
	 */
	public class PCM32BitFloatStereo44Khz extends PCMStrategy
		implements IPCMIOStrategy
	{
		public function PCM32BitFloatStereo44Khz( compressionType: Object = null )
		{
			super( compressionType, 44100.0, 2, 32 );
		}
		
		public function readFrameInSignal( data : ByteArray, dataOffset : Number, signal : Signal, position : Number ) : void
		{
			data.position = dataOffset + ( position << 3 );
			
			signal.l = data.readFloat();
			signal.r = data.readFloat();
		}
		
		public function read32BitStereo44KHz( data: ByteArray, dataOffset: Number, target : ByteArray, length : Number, startPosition : Number ) : void
		{
			data.position = dataOffset + ( startPosition << 3 );
			
			for ( var i : int = 0 ; i < length ; ++i )
			{
				target.writeFloat( data.readFloat() );
				target.writeFloat( data.readFloat() );
			}
		}
		
		public function write32BitStereo44KHz( data : ByteArray, target: ByteArray, numSamples : uint ) : void
		{
			for ( var i : int = 0 ; i < numSamples ; ++i )
			{
				target.writeFloat( data.readFloat() );
				target.writeFloat( data.readFloat() );
			}
		}
	}
}
