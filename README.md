# wpu / enhanced SIMD
WASM processor unit that combines CPU + GPU + NPU features. 

<table>
<tr>
<td>Processor unit</td>
<td>Technology</td>
<td>Interface</td>
<td>Threading</td>
<td rowspan=4 border=1 align=center width=50%>
&nbsp;WPU&nbsp;
</td>
</tr>

<tr>
<td>CPU</td>
<td>SIMD over Wasm</td>
<td>WebAssembly</td>
<td>CPU Core(s) Count</td>
</tr>


<tr>
<td>GPU</td>
<td>Compute Shader</td>
<td>WebGPU</td>
<td>GPU Workgroup(s) Count</td>
</tr>


<tr>
<td>NPU</td>
<td>Tensor</td>
<td>WebNN</td>
<td>Single Thread</td>
</tr>


</table>