# wpu / enhanced SIMD
WASM processor unit that combines CPU + GPU + NPU features. 

<table width=100%>
<tr>
<td></td>
<td>Processor unit</td>
<td>Technology</td>
<td>Interface</td>
<td>Threading</td>
<td>W3C Standart</td>
</tr>

<tr>
<td rowspan=3 border=1 align=center>WPU</td>
<td>CPU</td>
<td>SIMD over wasm</td>
<td>WebAssembly</td>
<td>CPU Core(s) Count</td>
<td align=center>
<a target="_blank" href="https://www.w3.org/TR/2019/REC-wasm-web-api-1-20191205/">W3C</a>
</td>
</tr>


<tr>
<td>GPU</td>
<td>Compute Shader</td>
<td>WebGPU</td>
<td>GPU Workgroup(s) Count</td>
<td align=center>
<a target="_blank" href="https://www.w3.org/TR/webgpu/">W3C</a>
</td>
</tr>


<tr>
<td>NPU</td>
<td>Tensor Ops.</td>
<td>WebNN</td>
<td>Single Thread</td>
<td align=center>
<a target="_blank" href="https://www.w3.org/TR/webnn/">W3C</a>
</td>

</tr>


</table>