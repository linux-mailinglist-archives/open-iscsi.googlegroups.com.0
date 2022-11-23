Return-Path: <open-iscsi+bncBDUM5HEZ5APBBMEX66NQMGQEL3RFSTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF48635115
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 08:28:51 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id q17-20020a056214019100b004b1d3c9f3acsf15813684qvr.0
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 23:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1+KQKUQwqAC8Eq77SqP+uxMFMxjzscx96sGbfUScE1k=;
        b=hpazEOfhkP2C/ehl9DcaH4qnhwxWD14SIu29/Uy2X9skgd/+Ec/XjwdegxjRBDb7IJ
         Cb2brAVo17cADyyM6b8QGM4FZi26oR1ahl9JsyG0yC30/BAI7I8xIhZuBbjAS29jMFOT
         0bXPJ8vyyqZVWYfqoR8X78P9nSsby2NHUrvCY50pSV3mLUjBz2562zW3bAqYBLeek6dc
         3mSIhRWXB1NU/M4d6dhizpfcBjKip+mpyW9r2jQFUfH3MnED+15dBx5RX0ypHbR5UbD0
         aL1b3iGT5zhAqUMy4s81uDpKstCbbotTjaD7tezr57/VhcPvTwLhjy5PBORSAe84UrUY
         z0oA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1+KQKUQwqAC8Eq77SqP+uxMFMxjzscx96sGbfUScE1k=;
        b=L5yGbulgyM8QRgmJ0yAYaZirykn0tvucnYLWGYrHT63gw2JOq+ZQEbBk6p3VO7maCv
         j0DIBBM8h42YnLkMdFNhyM6eadBCbkTSYSZVGhj/0mnkgXiM+IYN+rfNcvTolVv4IOiH
         KC9H5XtMb8wADwz8A+GN9xaEuaq6b/gmiWwHL1HoPpUb7W7b0i9GoxtuIWV8BOZWusGS
         eS0c1IH5DHOnRCyZNeEBQhfdc26ZgtWcs8i0NNU8ZGRiH6BDNqjWOc9rHUK2c5aJZmCT
         LsAIDCS4EK51XL/2FWpw9RgHX6ltvnxP69aodTGmC48CDgvqiBl9oQrFITSJOMY0F89d
         0K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+KQKUQwqAC8Eq77SqP+uxMFMxjzscx96sGbfUScE1k=;
        b=lwknePbcF/v1zSgxLORoT7jYDYnoekrJwfPctYECiwkKAsFRBEDi9zZqZz1DyShn9b
         QXRlfHLehjq6QMC77Q4nWroNF8zaShh8tXFVaITGsv5mFWcJN3vxrYwU+uSBP1UsB5LZ
         LQMo0z96sukzq8w+dHeap8U2GX9tcBqseh9uvQug1+Dy8CbNDBytymYrk0xWA8nb5T7W
         l31ZqAoaGBP/gtgzG9wcebLubT3LHyP5mX/IDb3Tk8xGrNS295sEWWx8BC99q0cZcrIq
         6OSOpIpAKJieQ5I9mB0XuQGWQSqZv4S4sN2mixC10pEVq7OirK4bT7iMmjbEhiNoqUCP
         r9QQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkYHa6a+MKpIxZUmxh7D8t5oqYmagQhiI07MWdi0Zq2kP1oZGSj
	FJ4SYyKFq5ywBzrg9ThwQ8c=
X-Google-Smtp-Source: AA0mqf6GC1F/i3+Nh2Av3rl0z4MIg2IC1X7GG1m3cwWRfJAKvUcIQQIVTqjwlRx5zib5ObySZk3BYA==
X-Received: by 2002:a05:6214:3c86:b0:4b9:4079:ed0f with SMTP id ok6-20020a0562143c8600b004b94079ed0fmr6883738qvb.108.1669188530275;
        Tue, 22 Nov 2022 23:28:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:a98c:0:b0:4af:8fc8:3851 with SMTP id a12-20020a0ca98c000000b004af8fc83851ls8090775qvb.1.-pod-prod-gmail;
 Tue, 22 Nov 2022 23:28:48 -0800 (PST)
X-Received: by 2002:ad4:53c9:0:b0:4c6:8b88:3065 with SMTP id k9-20020ad453c9000000b004c68b883065mr7458847qvv.126.1669188528164;
        Tue, 22 Nov 2022 23:28:48 -0800 (PST)
Date: Tue, 22 Nov 2022 23:28:47 -0800 (PST)
From: Luis Navarro <lunadesign@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n@googlegroups.com>
Subject: iscsiadm error "Could not load transport iser"
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1616_207514218.1669188527279"
X-Original-Sender: lunadesign@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1616_207514218.1669188527279
Content-Type: multipart/alternative; 
	boundary="----=_Part_1617_424885950.1669188527279"

------=_Part_1617_424885950.1669188527279
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to test a new Ubuntu 22.04.1 LIO iSCSI target with iscsiadm 
2.1.5 (installed via "apt").  iscsiadm works fine over "tcp" transport but 
always fails over the "iser" transport with the following error:

iscsiadm: Could not load transport iser.Dropping interface iface0.

Here are the commands I ran:

$ sudo iscsiadm -m iface -I iface0 --op=new
$ sudo iscsiadm -m iface -I iface0 -o update -n iface.transport_name -v iser
$ sudo iscsiadm -m discovery -t st -p 192.168.25.5:3260 -I iface0 -d 8
iscsiadm: Max file limits 1024 1048576
iscsiadm: updating defaults from '/etc/iscsi/iscsid.conf'
iscsiadm: updated 'discovery.sendtargets.iscsi.MaxRecvDataSegmentLength', 
'32768' => '32768'
iscsiadm: updated 'node.startup', 'manual' => 'manual'
iscsiadm: updated 'node.leading_login', 'No' => 'No'
iscsiadm: updated 'node.session.timeo.replacement_timeout', '120' => '120'
iscsiadm: updated 'node.conn[0].timeo.login_timeout', '30' => '15'
iscsiadm: updated 'node.conn[0].timeo.logout_timeout', '15' => '15'
iscsiadm: updated 'node.conn[0].timeo.noop_out_interval', '5' => '5'
iscsiadm: updated 'node.conn[0].timeo.noop_out_timeout', '5' => '5'
iscsiadm: updated 'node.session.err_timeo.abort_timeout', '15' => '15'
iscsiadm: updated 'node.session.err_timeo.lu_reset_timeout', '30' => '30'
iscsiadm: updated 'node.session.err_timeo.tgt_reset_timeout', '30' => '30'
iscsiadm: updated 'node.session.initial_login_retry_max', '4' => '8'
iscsiadm: updated 'node.session.cmds_max', '128' => '128'
iscsiadm: updated 'node.session.queue_depth', '32' => '32'
iscsiadm: updated 'node.session.xmit_thread_priority', '-20' => '-20'
iscsiadm: updated 'node.session.iscsi.InitialR2T', 'No' => 'No'
iscsiadm: updated 'node.session.iscsi.ImmediateData', 'Yes' => 'Yes'
iscsiadm: updated 'node.session.iscsi.FirstBurstLength', '262144' => 
'262144'
iscsiadm: updated 'node.session.iscsi.MaxBurstLength', '16776192' => 
'16776192'
iscsiadm: updated 'node.conn[0].iscsi.MaxRecvDataSegmentLength', '262144' 
=> '262144'
iscsiadm: updated 'node.conn[0].iscsi.MaxXmitDataSegmentLength', '0' => '0'
iscsiadm: updated 'node.session.nr_sessions', '1' => '1'
iscsiadm: updated 'node.session.reopen_max', '0' => '0'
iscsiadm: updated 'node.session.iscsi.FastAbort', 'Yes' => 'Yes'
iscsiadm: updated 'node.session.scan', 'auto' => 'auto'
iscsiadm: looking for iface conf /etc/iscsi/ifaces/iface0
iscsiadm: updated 'iface.iscsi_ifacename', 'iface0' => 'iface0'
iscsiadm: updated 'iface.prefix_len', '0' => '0'
iscsiadm: updated 'iface.transport_name', '' => 'iser'
iscsiadm: updated 'iface.vlan_id', '0' => '0'
iscsiadm: updated 'iface.vlan_priority', '0' => '0'
iscsiadm: updated 'iface.iface_num', '0' => '0'
iscsiadm: updated 'iface.mtu', '0' => '0'
iscsiadm: updated 'iface.port', '0' => '0'
iscsiadm: updated 'iface.tos', '0' => '0'
iscsiadm: updated 'iface.ttl', '0' => '0'
iscsiadm: updated 'iface.tcp_wsf', '0' => '0'
iscsiadm: updated 'iface.tcp_timer_scale', '0' => '0'
iscsiadm: updated 'iface.def_task_mgmt_timeout', '0' => '0'
iscsiadm: updated 'iface.erl', '0' => '0'
iscsiadm: updated 'iface.max_receive_data_len', '0' => '0'
iscsiadm: updated 'iface.first_burst_len', '0' => '0'
iscsiadm: updated 'iface.max_outstanding_r2t', '0' => '0'
iscsiadm: updated 'iface.max_burst_len', '0' => '0'
iscsiadm: in read_transports
iscsiadm: Adding new transport tcp
iscsiadm: Matched transport tcp
iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'handle'
iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'caps'
iscsiadm: in read_transports
iscsiadm: Updating transport tcp
iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'handle'
iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'caps'
iscsiadm: Could not load transport iser.Dropping interface iface0.

Looking at the /sys/class/iscsi_transport and 
/sys/devices/virtual/iscsi_transport directories on the client system, I 
only see "tcp".  Should I also be seeing "iser"?  Is there an extra package 
I need to install or step I need to take to get "iser" devices under the 
"iscsi_transport" directory?

Thanks!
Luis

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n%40googlegroups.com.

------=_Part_1617_424885950.1669188527279
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br>I'm trying to test a new Ubuntu 22.04.1 LIO iSCSI target wit=
h iscsiadm 2.1.5 (installed via "apt"). &nbsp;iscsiadm works fine over "tcp=
" transport but always fails over the "iser" transport with the following e=
rror:<br><br>iscsiadm: Could not load transport iser.Dropping interface ifa=
ce0.<br><br>Here are the commands I ran:<br><br>$ sudo iscsiadm -m iface -I=
 iface0 --op=3Dnew<br>$ sudo iscsiadm -m iface -I iface0 -o update -n iface=
.transport_name -v iser<br>$ sudo iscsiadm -m discovery -t st -p 192.168.25=
.5:3260 -I iface0 -d 8<br>iscsiadm: Max file limits 1024 1048576<br>iscsiad=
m: updating defaults from '/etc/iscsi/iscsid.conf'<br>iscsiadm: updated 'di=
scovery.sendtargets.iscsi.MaxRecvDataSegmentLength', '32768' =3D&gt; '32768=
'<br>iscsiadm: updated 'node.startup', 'manual' =3D&gt; 'manual'<br>iscsiad=
m: updated 'node.leading_login', 'No' =3D&gt; 'No'<br>iscsiadm: updated 'no=
de.session.timeo.replacement_timeout', '120' =3D&gt; '120'<br>iscsiadm: upd=
ated 'node.conn[0].timeo.login_timeout', '30' =3D&gt; '15'<br>iscsiadm: upd=
ated 'node.conn[0].timeo.logout_timeout', '15' =3D&gt; '15'<br>iscsiadm: up=
dated 'node.conn[0].timeo.noop_out_interval', '5' =3D&gt; '5'<br>iscsiadm: =
updated 'node.conn[0].timeo.noop_out_timeout', '5' =3D&gt; '5'<br>iscsiadm:=
 updated 'node.session.err_timeo.abort_timeout', '15' =3D&gt; '15'<br>iscsi=
adm: updated 'node.session.err_timeo.lu_reset_timeout', '30' =3D&gt; '30'<b=
r>iscsiadm: updated 'node.session.err_timeo.tgt_reset_timeout', '30' =3D&gt=
; '30'<br>iscsiadm: updated 'node.session.initial_login_retry_max', '4' =3D=
&gt; '8'<br>iscsiadm: updated 'node.session.cmds_max', '128' =3D&gt; '128'<=
br>iscsiadm: updated 'node.session.queue_depth', '32' =3D&gt; '32'<br>iscsi=
adm: updated 'node.session.xmit_thread_priority', '-20' =3D&gt; '-20'<br>is=
csiadm: updated 'node.session.iscsi.InitialR2T', 'No' =3D&gt; 'No'<br>iscsi=
adm: updated 'node.session.iscsi.ImmediateData', 'Yes' =3D&gt; 'Yes'<br>isc=
siadm: updated 'node.session.iscsi.FirstBurstLength', '262144' =3D&gt; '262=
144'<br>iscsiadm: updated 'node.session.iscsi.MaxBurstLength', '16776192' =
=3D&gt; '16776192'<br>iscsiadm: updated 'node.conn[0].iscsi.MaxRecvDataSegm=
entLength', '262144' =3D&gt; '262144'<br>iscsiadm: updated 'node.conn[0].is=
csi.MaxXmitDataSegmentLength', '0' =3D&gt; '0'<br>iscsiadm: updated 'node.s=
ession.nr_sessions', '1' =3D&gt; '1'<br>iscsiadm: updated 'node.session.reo=
pen_max', '0' =3D&gt; '0'<br>iscsiadm: updated 'node.session.iscsi.FastAbor=
t', 'Yes' =3D&gt; 'Yes'<br>iscsiadm: updated 'node.session.scan', 'auto' =
=3D&gt; 'auto'<br>iscsiadm: looking for iface conf /etc/iscsi/ifaces/iface0=
<br>iscsiadm: updated 'iface.iscsi_ifacename', 'iface0' =3D&gt; 'iface0'<br=
>iscsiadm: updated 'iface.prefix_len', '0' =3D&gt; '0'<br>iscsiadm: updated=
 'iface.transport_name', '' =3D&gt; 'iser'<br>iscsiadm: updated 'iface.vlan=
_id', '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.vlan_priority', '0' =3D&g=
t; '0'<br>iscsiadm: updated 'iface.iface_num', '0' =3D&gt; '0'<br>iscsiadm:=
 updated 'iface.mtu', '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.port', '0=
' =3D&gt; '0'<br>iscsiadm: updated 'iface.tos', '0' =3D&gt; '0'<br>iscsiadm=
: updated 'iface.ttl', '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.tcp_wsf'=
, '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.tcp_timer_scale', '0' =3D&gt;=
 '0'<br>iscsiadm: updated 'iface.def_task_mgmt_timeout', '0' =3D&gt; '0'<br=
>iscsiadm: updated 'iface.erl', '0' =3D&gt; '0'<br>iscsiadm: updated 'iface=
.max_receive_data_len', '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.first_b=
urst_len', '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.max_outstanding_r2t'=
, '0' =3D&gt; '0'<br>iscsiadm: updated 'iface.max_burst_len', '0' =3D&gt; '=
0'<br>iscsiadm: in read_transports<br>iscsiadm: Adding new transport tcp<br=
>iscsiadm: Matched transport tcp<br>iscsiadm: sysfs_attr_get_value: open '/=
class/iscsi_transport/tcp'/'handle'<br>iscsiadm: sysfs_attr_get_value: open=
 '/class/iscsi_transport/tcp'/'caps'<br>iscsiadm: in read_transports<br>isc=
siadm: Updating transport tcp<br>iscsiadm: sysfs_attr_get_value: open '/cla=
ss/iscsi_transport/tcp'/'handle'<br>iscsiadm: sysfs_attr_get_value: open '/=
class/iscsi_transport/tcp'/'caps'<br>iscsiadm: Could not load transport ise=
r.Dropping interface iface0.<br><br>Looking at the /sys/class/iscsi_transpo=
rt and /sys/devices/virtual/iscsi_transport directories on the client syste=
m, I only see "tcp". &nbsp;Should I also be seeing "iser"? &nbsp;Is there a=
n extra package I need to install or step I need to take to get "iser" devi=
ces under the "iscsi_transport" directory?<br><br>Thanks!<br>Luis<br>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n%40googlegroups.com</a>.=
<br />

------=_Part_1617_424885950.1669188527279--

------=_Part_1616_207514218.1669188527279--
