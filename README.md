# wpu / enhanced SIMD
WASM processor unit that combines CPU + GPU + NPU features. 

<table width=100%>
<tr>
<td width=15%>Processor unit</td>
<td width=15%>Technology</td>
<td width=15%>Interface</td>
<td width=15%>Threading</td>
<td rowspan=4 border=1 align=center width=40%>
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