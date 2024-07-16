Return-Path: <open-iscsi+bncBCRKJ2M45MFBBNUS3O2AMGQENIBOARQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5070E9331C7
	for <lists+open-iscsi@lfdr.de>; Tue, 16 Jul 2024 21:25:46 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 3f1490d57ef6-e02fff66a83sf10142181276.0
        for <lists+open-iscsi@lfdr.de>; Tue, 16 Jul 2024 12:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1721157945; x=1721762745; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:message-id:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Yxjzlyq5g+MbE0KEQbcb89USVRkVKuzLOqL63JIIBQ=;
        b=OUfUJxNs+GoYN+aY+4mDjeiMKi7/s+wfBIdPCqrM9wEi3iNmYZ2MVMUNgMfCJNlB+y
         NJpIW+p4YeSANZVPPTV+YdacWpzWCxKtSTjt+mQhZuaFaZWAru9Eq4iU7DOZJTFsdK+I
         C6Au3GaCstwge3HNLIpP7IoKtpuKs8Bumv+blY8BrPj5Ey+9mjoMTgzBvhf7hb5bT34H
         qmgyot6bntYflThmaTrGWjRzGtpW50ebONWZ2de4rxpEY5R2gN6dnYqntdPYJol22Ash
         djpc+Jt456RF2Y2PaT5NnP8e/34h7ecmE60PSqvEzdCWv1Y8nAStJbmsMsBQ47izhUFt
         rTGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721157945; x=1721762745; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:message-id:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Yxjzlyq5g+MbE0KEQbcb89USVRkVKuzLOqL63JIIBQ=;
        b=MQz/nI9Y3Wq5Wm8ZSzj4uybVW8bWj/E3FmnQw8OL/HPF5iUI9Q/0Ef8OjffbOVJwAi
         akgHZRAaPgodGFI403EAu4O+/7eoKO1I0A4bhitpKZfsXqLxg8+9eNM3B77qNWAWb4ia
         A8tBq3/+uXzGU6g9zDMgB/rLNWTLwHcuVY85HEK6g4ytVOxv3wzMaGqDSM8ZEQHj/ikJ
         O1hfQeGlo6GQ8WL01ybZzdsKmvZvygMVZMCVmZ/LuQ82GYsoOrCpcFDEzWmVVwrglJ7M
         S8nCtcj0Nvk2n+9YwexUbV2gvhd3x6qgFWvSVCE5M/MK4aEwNmQbZZBqZppOu8+v4RG+
         vPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721157945; x=1721762745;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Yxjzlyq5g+MbE0KEQbcb89USVRkVKuzLOqL63JIIBQ=;
        b=QzOQVqGrgCmQEVgTXoUxks/8GsSx9vniLc3o4TZff+Dt9AJoUlZdwujPW6VSXCEG/b
         8qC2S0Op1xOu+/wPZ4JrtcI+l9gWDwmj8fdz3lrZsCawFcf8MYoHfJB0sPrsRLe3Ggx0
         mWjJSoH4c4IbXN/3o6qqDemuzl2bLe0ER6YdLS2KIDm2KHKC86XxGM1jGWqSSqmsy5Cz
         /TcBA/bPxehthD3SGICZTO1N9BovELupqbPOmlNzTi17EPkTfE3h1vO7EnAn6zHJZqg7
         L1+aDbEGmavBzMn0oPogacKPf49ecZeYuk2H7q1WY+VUQ8vRVBvi4NP53TqGhL6tFJj+
         2+hA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=1; AJvYcCXGYIy4y4dBIXOhqmAYy4vydllc9gqpjyVIOP5ViQfvYKJowyJaTNBAK61nQGtLA6p8aZkh+AG24St2SX8cs0l0uCo/jogEbSA=
X-Gm-Message-State: AOJu0YyJ0ebR66SjdaBonRZdkd4Cb4HI1AcY9sDFT1bDMUpFHvr/GnDn
	BhygbkvKjP86LcdzHA3fS2LAOrZ6AhNDZGpm3vwI8X0B8LCRrgqj
X-Google-Smtp-Source: AGHT+IHF1NTNmlKbb5qozop/GpwRmfNF4R+aeZETV2+PFVXv1e01IW3wkcuquB0sr8A+hNApCGzm3Q==
X-Received: by 2002:a05:6902:118d:b0:e05:e2d5:666c with SMTP id 3f1490d57ef6-e05e2d573c6mr1405420276.24.1721157945083;
        Tue, 16 Jul 2024 12:25:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6902:2b91:b0:e03:bbb7:44d9 with SMTP id
 3f1490d57ef6-e0578eaadd6ls9908591276.0.-pod-prod-08-us; Tue, 16 Jul 2024
 12:25:41 -0700 (PDT)
X-Received: by 2002:a05:690c:428b:b0:62d:fbf:920a with SMTP id 00721157ae682-66381ea8892mr205237b3.10.1721157941225;
        Tue, 16 Jul 2024 12:25:41 -0700 (PDT)
Date: Tue, 16 Jul 2024 12:25:40 -0700 (PDT)
From: "ajhu...@gmail.com" <ajhutchin@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <fe79d2d1-4b30-4a16-81e7-0e54f49a6c33n@googlegroups.com>
Subject: [BUG]: Null pointer exception from parallel calls to
 iscsi_stop_conn
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4202_372998066.1721157940123"
X-Original-Sender: ajhutchin@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_4202_372998066.1721157940123
Content-Type: multipart/alternative; 
	boundary="----=_Part_4203_1027305076.1721157940123"

------=_Part_4203_1027305076.1721157940123
Content-Type: text/plain; charset="UTF-8"

Hi. I reviewed a kdump generated by a NULL pointer exception during 
termination of an iSCSI session. In this instance, the termination of the 
session was due to a 'Target-Not-Found' error from target during login. 

The system is running SLES15 SP4 ( v5.14.21 )
 
crash> bt
PID: 61755  TASK: ffff88ae57e4c380  CPU: 6   COMMAND: "kworker/u40:3"
 #0 [ffffc90006b6fae8] machine_kexec at ffffffff8106af4e
 #1 [ffffc90006b6fb38] __crash_kexec at ffffffff81168dce
 #2 [ffffc90006b6fc00] panic at ffffffff8191aa0f
 #3 [ffffc90006b6fc88] oops_end at ffffffff8102e3dd
 #4 [ffffc90006b6fca8] page_fault_oops at ffffffff8107b6fb
 #5 [ffffc90006b6fd28] exc_page_fault at ffffffff81923610
 #6 [ffffc90006b6fd50] asm_exc_page_fault at ffffffff81a00f39
    [exception RIP: iscsi_sw_tcp_release_conn+111]
    RIP: ffffffffc0c8243f  RSP: ffffc90006b6fe08  RFLAGS: 00010202
    RAX: 0000000000000000  RBX: ffff8881cb225388  RCX: 0000000000000001
    RDX: ffff88adbf660900  RSI: ffffffff81f7cb84  RDI: ffff88adbf660980
    RBP: ffff888ad68cd140   R8: 0000000000000001   R9: 0000000000000001
    R10: 0000000000000000  R11: 00000000000001d2  R12: ffff8881cb225388
    R13: ffff8881cb2256a8  R14: ffff8881cb2256a8  R15: ffff888105d8ca05
    ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
 #7 [ffffc90006b6fe38] iscsi_sw_tcp_conn_stop at ffffffffc0c825fd 
[iscsi_tcp]
 #8 [ffffc90006b6fe58] iscsi_stop_conn at ffffffffc0f276f3 
[scsi_transport_iscsi]
 #9 [ffffc90006b6fe78] iscsi_cleanup_conn_work_fn at ffffffffc0f277f8 
[scsi_transport_iscsi]
#10 [ffffc90006b6fea0] process_one_work at ffffffff810b5766
#11 [ffffc90006b6fed8] worker_thread at ffffffff810b595d
#12 [ffffc90006b6ff10] kthread at ffffffff810bdb63
#13 [ffffc90006b6ff50] ret_from_fork at ffffffff8100204f

Based on code review and journal logs, iscsid detects the login error and 
initiates a TERM stop from user space. In parallel, the kernel driver 
detects a socket error and initiates a RECOVERY stop on the connection.  

*Initiated by iscsid*

iscsi_recv_login_rsp ->
  iscsi_login_eh ->
    session_conn_shutdown ->
      kstop_conn ->
       iscsi_if_transport_conn ->
         iscsi_if_stop_conn ->
           iscsi_stop_conn(conn, STOP_CONN_TERM)

*Initiated by error on TCP socket*

iscsi_sw_sk_state_check ->
  iscsi_conn_failure ->
    iscsi_conn_error_event ->
      iscsi_conn_error_event ->
        queue_work(iscsi_conn_cleanup_workq, &conn->cleanup_work);
        .
        .
        iscsi_cleanup_conn_work_fn ->
          iscsi_stop_conn(conn, STOP_CONN_RECOVER);

The null pointer exception occurred in the* iscsi_stop_conn *call initiated 
from the worker thread for cleanup. Both *iscsi_sw_tcp_conn_stop* and 
*iscsi_sw_tcp_release_conn* check for a NULL sock pointer in the connection 
but the call to *iscsi_sw_tcp_conn_restore_callbacks* within 
*iscsi_sw_tcp_release_conn* does not leaving a small window where the 
connection's socket pointer can be set to NULL by the other 
*iscsi_stop_conn* call running in parallel resulting in this exception.

It would be simple enough to add a check for a NULL socket pointer in *iscsi_sw_tcp_conn_restore_callbacks 
*but I'm not convinced that is the correct solution. It looks to me that 
the resulting state of the session and connections would be different 
depending on which of the two calls executes first. If the cleanup thread 
successfully stop the connection with RECOVERY,  it will set the socket 
pointer in the connection to NULL and this will short circuit the iscsid 
TERMINATE and keep it from modifying the connection/session states. 

Also, I noticed that the cleanup thread's call to iscsi_stop_conn is made 
while holding the ep_mutex while the call made from the iscsid is not. 
Should the call from iscsid to iscsi_stop_conn be made while holding the 
ep_mutex? 

Thanks in advance, 
Adam 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fe79d2d1-4b30-4a16-81e7-0e54f49a6c33n%40googlegroups.com.

------=_Part_4203_1027305076.1721157940123
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi. I reviewed a kdump generated by a NULL pointer exception during termina=
tion of an iSCSI session. In this instance, the termination of the session =
was due to a 'Target-Not-Found' error from target during login.=C2=A0<div><=
br /></div><div>The system is running SLES15 SP4 ( v5.14.21 )</div><div>=C2=
=A0</div><div><font face=3D"Courier New">crash&gt; bt<br />PID: 61755 =C2=
=A0TASK: ffff88ae57e4c380 =C2=A0CPU: 6 =C2=A0 COMMAND: "kworker/u40:3"<br /=
>=C2=A0#0 [ffffc90006b6fae8] machine_kexec at ffffffff8106af4e<br />=C2=A0#=
1 [ffffc90006b6fb38] __crash_kexec at ffffffff81168dce<br />=C2=A0#2 [ffffc=
90006b6fc00] panic at ffffffff8191aa0f<br />=C2=A0#3 [ffffc90006b6fc88] oop=
s_end at ffffffff8102e3dd<br />=C2=A0#4 [ffffc90006b6fca8] page_fault_oops =
at ffffffff8107b6fb<br />=C2=A0#5 [ffffc90006b6fd28] exc_page_fault at ffff=
ffff81923610<br />=C2=A0#6 [ffffc90006b6fd50] asm_exc_page_fault at fffffff=
f81a00f39<br />=C2=A0 =C2=A0 [exception RIP: iscsi_sw_tcp_release_conn+111]=
<br />=C2=A0 =C2=A0 RIP: ffffffffc0c8243f =C2=A0RSP: ffffc90006b6fe08 =C2=
=A0RFLAGS: 00010202<br />=C2=A0 =C2=A0 RAX: 0000000000000000 =C2=A0RBX: fff=
f8881cb225388 =C2=A0RCX: 0000000000000001<br />=C2=A0 =C2=A0 RDX: ffff88adb=
f660900 =C2=A0RSI: ffffffff81f7cb84 =C2=A0RDI: ffff88adbf660980<br />=C2=A0=
 =C2=A0 RBP: ffff888ad68cd140 =C2=A0 R8: 0000000000000001 =C2=A0 R9: 000000=
0000000001<br />=C2=A0 =C2=A0 R10: 0000000000000000 =C2=A0R11: 000000000000=
01d2 =C2=A0R12: ffff8881cb225388<br />=C2=A0 =C2=A0 R13: ffff8881cb2256a8 =
=C2=A0R14: ffff8881cb2256a8 =C2=A0R15: ffff888105d8ca05<br />=C2=A0 =C2=A0 =
ORIG_RAX: ffffffffffffffff =C2=A0CS: 0010 =C2=A0SS: 0018<br />=C2=A0#7 [fff=
fc90006b6fe38] iscsi_sw_tcp_conn_stop at ffffffffc0c825fd [iscsi_tcp]<br />=
=C2=A0#8 [ffffc90006b6fe58] iscsi_stop_conn at ffffffffc0f276f3 [scsi_trans=
port_iscsi]<br />=C2=A0#9 [ffffc90006b6fe78] iscsi_cleanup_conn_work_fn at =
ffffffffc0f277f8 [scsi_transport_iscsi]<br />#10 [ffffc90006b6fea0] process=
_one_work at ffffffff810b5766<br />#11 [ffffc90006b6fed8] worker_thread at =
ffffffff810b595d<br />#12 [ffffc90006b6ff10] kthread at ffffffff810bdb63<br=
 />#13 [ffffc90006b6ff50] ret_from_fork at ffffffff8100204f</font><br /></d=
iv><div><br /></div><div>Based on code review and journal logs, iscsid dete=
cts the login error and initiates a TERM stop from user space. In parallel,=
 the kernel driver detects a socket error and initiates a RECOVERY stop on =
the connection. =C2=A0<br /><br /><b>Initiated by iscsid</b><br /><br />isc=
si_recv_login_rsp -&gt;<br />=C2=A0 iscsi_login_eh -&gt;<br />=C2=A0 =C2=A0=
 session_conn_shutdown -&gt;<br />=C2=A0 =C2=A0 =C2=A0 kstop_conn -&gt;<br =
/>=C2=A0 =C2=A0 =C2=A0 =C2=A0iscsi_if_transport_conn -&gt;<br />=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0iscsi_if_stop_conn -&gt;<br />=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0iscsi_stop_conn(conn, STOP_CONN_TERM)<br /><span style=
=3D"white-space: pre;">	</span><b><br />Initiated by error on TCP socket</b=
><br /><br />iscsi_sw_sk_state_check -&gt;<br />=C2=A0 iscsi_conn_failure -=
&gt;<br />=C2=A0 =C2=A0 iscsi_conn_error_event -&gt;<br />=C2=A0 =C2=A0 =C2=
=A0 iscsi_conn_error_event -&gt;<br />=C2=A0 =C2=A0 =C2=A0 =C2=A0 queue_wor=
k(iscsi_conn_cleanup_workq, &amp;conn-&gt;cleanup_work);<br />=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 .<br />=C2=A0 =C2=A0 =C2=A0 =C2=A0 .<br />=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 iscsi_cleanup_conn_work_fn -&gt;<br />=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 iscsi_stop_conn(conn, STOP_CONN_RECOVER);<br /></div><div><br />=
</div><div>The null pointer exception occurred in the<i> iscsi_stop_conn </=
i>call initiated from the worker thread for cleanup. Both <i>iscsi_sw_tcp_c=
onn_stop</i> and <i>iscsi_sw_tcp_release_conn</i> check for a NULL sock poi=
nter in the connection but the call to <i>iscsi_sw_tcp_conn_restore_callbac=
ks</i> within <i>iscsi_sw_tcp_release_conn</i> does not leaving a small win=
dow where the connection's socket pointer can be set to NULL by the other <=
i>iscsi_stop_conn</i> call running in parallel resulting in this exception.=
<br /></div><div><br /></div><div>It would be simple enough to add a check =
for a NULL socket pointer in=C2=A0<i>iscsi_sw_tcp_conn_restore_callbacks </=
i>but I'm not convinced that is the correct solution. It looks to me that t=
he resulting state of the session and connections would be different depend=
ing on which of the two calls executes first. If the cleanup thread success=
fully stop the connection with RECOVERY,=C2=A0 it will set the socket point=
er in the connection to NULL and this will short circuit the iscsid TERMINA=
TE and keep it from modifying the connection/session states.=C2=A0</div><di=
v><br /></div><div>Also, I noticed that the cleanup thread's call to iscsi_=
stop_conn is made while holding the ep_mutex while the call made from the i=
scsid is not. Should the call from iscsid to iscsi_stop_conn be made while =
holding the ep_mutex?=C2=A0</div><div><br /></div><div>Thanks in advance,=
=C2=A0</div><div>Adam=C2=A0</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/fe79d2d1-4b30-4a16-81e7-0e54f49a6c33n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/fe79d2d1-4b30-4a16-81e7-0e54f49a6c33n%40googlegroups.com</a>.=
<br />

------=_Part_4203_1027305076.1721157940123--

------=_Part_4202_372998066.1721157940123--
