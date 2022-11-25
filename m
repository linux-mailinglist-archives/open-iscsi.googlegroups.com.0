Return-Path: <open-iscsi+bncBDUM5HEZ5APBBL6EQSOAMGQEYI42RTY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A02639089
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 21:14:42 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id li11-20020a0562145e0b00b004c6b8b4dc29sf4493854qvb.4
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 12:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ibkGHLFj8txu9Myppje4qW1GKrsupwreFqZ/jHMIjnU=;
        b=rVBYkFVJC3FIZ2Y9kmieDEWvjqV6EuQXgcXrNG1JgdZEhvR4MfV8FSkm8EiML4Rocp
         5nDhkPAVPx2tJEulHUJsljged7/LpURcpLV6tCg9iI8dxbhFiE7G0mRY3heTR1Jc+GDK
         pjoVaJ5e3lMgVldAI1+eY/xMrwsUtNMhuG0AvcJfrBdBJrKeMc8BEhn68EE+07vEuwj6
         KfYa9r0f1qHWQXShgKJ9r2hx4myp1m/dUs686QZbTi5cjSTMLy6qLf7FFYXeDMeodjK3
         OuQ+5w5akU3wcsjvsVMfvIlYUW7Y3C8WqDgk5zIcyo9gBQ7slT9wH2l2zLsLAkfHU1OV
         IwDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ibkGHLFj8txu9Myppje4qW1GKrsupwreFqZ/jHMIjnU=;
        b=cC2YomszTWt5CqWEGyjl2uaq6Zje4t3XYkX0/2s71LSfsqCaiOM43gcW05oMgGZaib
         D7iVcQnrCBOmeX0zaNfGf4yiUNO1Z1TVVfvJtgvD9Vy4lPRaeJl4liCdteH2z72PSOHY
         5Loz0F8ESzNho6t9EVl1DsBN+5UWQua0psa9kjnpQJboA4MQjN+K8acjfAi4HOtzIiiL
         Rdqr4fk60+jzP6BN9/DSYEzAH7LwNZKs9OZ+u7sJ1UTX8XJ2ZyhG4C/sQvMb7xKHvdfV
         BEl5Hr1Mzemcv9BmGnhaAGDYirvmY33nJw46CaR9az17uTjd6+z6N3SNSd1ZMqo++MSa
         A8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ibkGHLFj8txu9Myppje4qW1GKrsupwreFqZ/jHMIjnU=;
        b=Jda1KbB5F+1gbj3Q+re/m3YaPcW3+rcm+SJN+GsQPyntnhTi4ALiiCKkw/zvdm9Yn3
         eP0+4PnSavKDSQCmGw8EmpdEOu0mEf8WP8+RhJQz8VN8B8MH7KtnhfwhjtGrh2Ew7QcD
         SFYCE0HQznFbE5ASKMGVWAQiJ386GxxcXbsFMZlQ6bDRSKeLGMphJESB6sUDj5nDi+TQ
         2SJkEPV7LM162l+nxCffKbgx/HlnjIS0/RwBJ7FiOs5ZqkvB1OR7TD279dpa2RW/GCpG
         UNYsRyW9ayorDe9NqW6k2NtIppoBFsxBrRiSah+Tk743trOaOW24mQK/M7RN6kS4dw3X
         Vx/Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkYpw/l+duYLuBbPJMfqusqSqLm5qVXqff3Lig0tLPjQCFL9tOy
	NNC2F8w1auCkL19r6WG3f4s=
X-Google-Smtp-Source: AA0mqf5J6ztm2FOmcl4mYZSmrMKV80jK5GyXtgg26y3mHtYzmqsIBlhupAChE3ORUJB8bCFXxHjDwA==
X-Received: by 2002:ac8:4249:0:b0:3a5:a44:ab6e with SMTP id r9-20020ac84249000000b003a50a44ab6emr36690075qtm.522.1669407280424;
        Fri, 25 Nov 2022 12:14:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:e3d4:0:b0:4c6:e279:2625 with SMTP id e20-20020a0ce3d4000000b004c6e2792625ls1515764qvl.6.-pod-prod-gmail;
 Fri, 25 Nov 2022 12:14:38 -0800 (PST)
X-Received: by 2002:a0c:e649:0:b0:4c6:1e50:f01c with SMTP id c9-20020a0ce649000000b004c61e50f01cmr18742833qvn.87.1669407278622;
        Fri, 25 Nov 2022 12:14:38 -0800 (PST)
Date: Fri, 25 Nov 2022 12:14:37 -0800 (PST)
From: Luis Navarro <lunadesign@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0335c6bf-af39-41bf-a5a8-bcc002bbe2c0n@googlegroups.com>
In-Reply-To: <9d24cea1-f8a8-43e9-9982-c9e6df0cf770n@googlegroups.com>
References: <40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n@googlegroups.com>
 <9d24cea1-f8a8-43e9-9982-c9e6df0cf770n@googlegroups.com>
Subject: Re: iscsiadm error "Could not load transport iser"
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4398_1193383119.1669407277852"
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

------=_Part_4398_1193383119.1669407277852
Content-Type: multipart/alternative; 
	boundary="----=_Part_4399_1659819957.1669407277852"

------=_Part_4399_1659819957.1669407277852
Content-Type: text/plain; charset="UTF-8"

I'm using two ConnectX-5 Ethernet cards (MCSX515A-CCAT) direct connected 
with a QSFP28 DAC.

FWIW, after I submitted my question, I *think* I got ISER to work with the 
same target but using ESXi 6.7 as the initiator.  But I'd still like to use 
iscsiadm for debugging.

My best guess is that I need to install an optional Ubuntu package to get 
those "iser" devices under the "iscsi_transport" directory?
On Friday, November 25, 2022 at 9:33:34 AM UTC-8 The Lee-Man wrote:

> The iser transport is only supported for some cards. It's normally an 
> infiniband transport.
>
> Do you have a CNA card (and infrastructure) that supports iser?
>
> On Tuesday, November 22, 2022 at 11:28:47 PM UTC-8 Luis Navarro wrote:
>
>> Hi all,
>>
>> I'm trying to test a new Ubuntu 22.04.1 LIO iSCSI target with iscsiadm 
>> 2.1.5 (installed via "apt").  iscsiadm works fine over "tcp" transport but 
>> always fails over the "iser" transport with the following error:
>>
>> iscsiadm: Could not load transport iser.Dropping interface iface0.
>>
>> Here are the commands I ran:
>>
>> $ sudo iscsiadm -m iface -I iface0 --op=new
>> $ sudo iscsiadm -m iface -I iface0 -o update -n iface.transport_name -v 
>> iser
>> $ sudo iscsiadm -m discovery -t st -p 192.168.25.5:3260 -I iface0 -d 8
>> iscsiadm: Max file limits 1024 1048576
>> iscsiadm: updating defaults from '/etc/iscsi/iscsid.conf'
>> iscsiadm: updated 'discovery.sendtargets.iscsi.MaxRecvDataSegmentLength', 
>> '32768' => '32768'
>> iscsiadm: updated 'node.startup', 'manual' => 'manual'
>> iscsiadm: updated 'node.leading_login', 'No' => 'No'
>> iscsiadm: updated 'node.session.timeo.replacement_timeout', '120' => '120'
>> iscsiadm: updated 'node.conn[0].timeo.login_timeout', '30' => '15'
>> iscsiadm: updated 'node.conn[0].timeo.logout_timeout', '15' => '15'
>> iscsiadm: updated 'node.conn[0].timeo.noop_out_interval', '5' => '5'
>> iscsiadm: updated 'node.conn[0].timeo.noop_out_timeout', '5' => '5'
>> iscsiadm: updated 'node.session.err_timeo.abort_timeout', '15' => '15'
>> iscsiadm: updated 'node.session.err_timeo.lu_reset_timeout', '30' => '30'
>> iscsiadm: updated 'node.session.err_timeo.tgt_reset_timeout', '30' => '30'
>> iscsiadm: updated 'node.session.initial_login_retry_max', '4' => '8'
>> iscsiadm: updated 'node.session.cmds_max', '128' => '128'
>> iscsiadm: updated 'node.session.queue_depth', '32' => '32'
>> iscsiadm: updated 'node.session.xmit_thread_priority', '-20' => '-20'
>> iscsiadm: updated 'node.session.iscsi.InitialR2T', 'No' => 'No'
>> iscsiadm: updated 'node.session.iscsi.ImmediateData', 'Yes' => 'Yes'
>> iscsiadm: updated 'node.session.iscsi.FirstBurstLength', '262144' => 
>> '262144'
>> iscsiadm: updated 'node.session.iscsi.MaxBurstLength', '16776192' => 
>> '16776192'
>> iscsiadm: updated 'node.conn[0].iscsi.MaxRecvDataSegmentLength', '262144' 
>> => '262144'
>> iscsiadm: updated 'node.conn[0].iscsi.MaxXmitDataSegmentLength', '0' => 
>> '0'
>> iscsiadm: updated 'node.session.nr_sessions', '1' => '1'
>> iscsiadm: updated 'node.session.reopen_max', '0' => '0'
>> iscsiadm: updated 'node.session.iscsi.FastAbort', 'Yes' => 'Yes'
>> iscsiadm: updated 'node.session.scan', 'auto' => 'auto'
>> iscsiadm: looking for iface conf /etc/iscsi/ifaces/iface0
>> iscsiadm: updated 'iface.iscsi_ifacename', 'iface0' => 'iface0'
>> iscsiadm: updated 'iface.prefix_len', '0' => '0'
>> iscsiadm: updated 'iface.transport_name', '' => 'iser'
>> iscsiadm: updated 'iface.vlan_id', '0' => '0'
>> iscsiadm: updated 'iface.vlan_priority', '0' => '0'
>> iscsiadm: updated 'iface.iface_num', '0' => '0'
>> iscsiadm: updated 'iface.mtu', '0' => '0'
>> iscsiadm: updated 'iface.port', '0' => '0'
>> iscsiadm: updated 'iface.tos', '0' => '0'
>> iscsiadm: updated 'iface.ttl', '0' => '0'
>> iscsiadm: updated 'iface.tcp_wsf', '0' => '0'
>> iscsiadm: updated 'iface.tcp_timer_scale', '0' => '0'
>> iscsiadm: updated 'iface.def_task_mgmt_timeout', '0' => '0'
>> iscsiadm: updated 'iface.erl', '0' => '0'
>> iscsiadm: updated 'iface.max_receive_data_len', '0' => '0'
>> iscsiadm: updated 'iface.first_burst_len', '0' => '0'
>> iscsiadm: updated 'iface.max_outstanding_r2t', '0' => '0'
>> iscsiadm: updated 'iface.max_burst_len', '0' => '0'
>> iscsiadm: in read_transports
>> iscsiadm: Adding new transport tcp
>> iscsiadm: Matched transport tcp
>> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'handle'
>> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'caps'
>> iscsiadm: in read_transports
>> iscsiadm: Updating transport tcp
>> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'handle'
>> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'caps'
>> iscsiadm: Could not load transport iser.Dropping interface iface0.
>>
>> Looking at the /sys/class/iscsi_transport and 
>> /sys/devices/virtual/iscsi_transport directories on the client system, I 
>> only see "tcp".  Should I also be seeing "iser"?  Is there an extra package 
>> I need to install or step I need to take to get "iser" devices under the 
>> "iscsi_transport" directory?
>>
>> Thanks!
>> Luis
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0335c6bf-af39-41bf-a5a8-bcc002bbe2c0n%40googlegroups.com.

------=_Part_4399_1659819957.1669407277852
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm using two ConnectX-5 Ethernet cards (MCSX515A-CCAT) direct connected wi=
th a QSFP28 DAC.<div><br></div><div>FWIW, after I submitted my question, I =
*think* I got ISER to work with the same target but using ESXi 6.7 as the i=
nitiator.&nbsp; But I'd still like to use iscsiadm for debugging.<br><br></=
div><div>My best guess is that I need to install an optional Ubuntu package=
 to get those "iser" devices under the "iscsi_transport" directory?</div><d=
iv class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Friday, =
November 25, 2022 at 9:33:34 AM UTC-8 The Lee-Man wrote:<br/></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px so=
lid rgb(204, 204, 204); padding-left: 1ex;"><div>The iser transport is only=
 supported for some cards. It&#39;s normally an infiniband transport.</div>=
<div><br></div><div>Do you have a CNA card (and infrastructure) that suppor=
ts iser?<br></div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D=
"gmail_attr">On Tuesday, November 22, 2022 at 11:28:47 PM UTC-8 Luis Navarr=
o wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br><b=
r>I&#39;m trying to test a new Ubuntu 22.04.1 LIO iSCSI target with iscsiad=
m 2.1.5 (installed via &quot;apt&quot;). =C2=A0iscsiadm works fine over &qu=
ot;tcp&quot; transport but always fails over the &quot;iser&quot; transport=
 with the following error:<br><br>iscsiadm: Could not load transport iser.D=
ropping interface iface0.<br><br>Here are the commands I ran:<br><br>$ sudo=
 iscsiadm -m iface -I iface0 --op=3Dnew<br>$ sudo iscsiadm -m iface -I ifac=
e0 -o update -n iface.transport_name -v iser<br>$ sudo iscsiadm -m discover=
y -t st -p <a href=3D"http://192.168.25.5:3260" rel=3D"nofollow" target=3D"=
_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3D=
http://192.168.25.5:3260&amp;source=3Dgmail&amp;ust=3D1669493391191000&amp;=
usg=3DAOvVaw3RdtXqPRnUIpbL8uQC4bmq">192.168.25.5:3260</a> -I iface0 -d 8<br=
>iscsiadm: Max file limits 1024 1048576<br>iscsiadm: updating defaults from=
 &#39;/etc/iscsi/iscsid.conf&#39;<br>iscsiadm: updated &#39;discovery.sendt=
argets.iscsi.MaxRecvDataSegmentLength&#39;, &#39;32768&#39; =3D&gt; &#39;32=
768&#39;<br>iscsiadm: updated &#39;node.startup&#39;, &#39;manual&#39; =3D&=
gt; &#39;manual&#39;<br>iscsiadm: updated &#39;node.leading_login&#39;, &#3=
9;No&#39; =3D&gt; &#39;No&#39;<br>iscsiadm: updated &#39;node.session.timeo=
.replacement_timeout&#39;, &#39;120&#39; =3D&gt; &#39;120&#39;<br>iscsiadm:=
 updated &#39;node.conn[0].timeo.login_timeout&#39;, &#39;30&#39; =3D&gt; &=
#39;15&#39;<br>iscsiadm: updated &#39;node.conn[0].timeo.logout_timeout&#39=
;, &#39;15&#39; =3D&gt; &#39;15&#39;<br>iscsiadm: updated &#39;node.conn[0]=
.timeo.noop_out_interval&#39;, &#39;5&#39; =3D&gt; &#39;5&#39;<br>iscsiadm:=
 updated &#39;node.conn[0].timeo.noop_out_timeout&#39;, &#39;5&#39; =3D&gt;=
 &#39;5&#39;<br>iscsiadm: updated &#39;node.session.err_timeo.abort_timeout=
&#39;, &#39;15&#39; =3D&gt; &#39;15&#39;<br>iscsiadm: updated &#39;node.ses=
sion.err_timeo.lu_reset_timeout&#39;, &#39;30&#39; =3D&gt; &#39;30&#39;<br>=
iscsiadm: updated &#39;node.session.err_timeo.tgt_reset_timeout&#39;, &#39;=
30&#39; =3D&gt; &#39;30&#39;<br>iscsiadm: updated &#39;node.session.initial=
_login_retry_max&#39;, &#39;4&#39; =3D&gt; &#39;8&#39;<br>iscsiadm: updated=
 &#39;node.session.cmds_max&#39;, &#39;128&#39; =3D&gt; &#39;128&#39;<br>is=
csiadm: updated &#39;node.session.queue_depth&#39;, &#39;32&#39; =3D&gt; &#=
39;32&#39;<br>iscsiadm: updated &#39;node.session.xmit_thread_priority&#39;=
, &#39;-20&#39; =3D&gt; &#39;-20&#39;<br>iscsiadm: updated &#39;node.sessio=
n.iscsi.InitialR2T&#39;, &#39;No&#39; =3D&gt; &#39;No&#39;<br>iscsiadm: upd=
ated &#39;node.session.iscsi.ImmediateData&#39;, &#39;Yes&#39; =3D&gt; &#39=
;Yes&#39;<br>iscsiadm: updated &#39;node.session.iscsi.FirstBurstLength&#39=
;, &#39;262144&#39; =3D&gt; &#39;262144&#39;<br>iscsiadm: updated &#39;node=
.session.iscsi.MaxBurstLength&#39;, &#39;16776192&#39; =3D&gt; &#39;1677619=
2&#39;<br>iscsiadm: updated &#39;node.conn[0].iscsi.MaxRecvDataSegmentLengt=
h&#39;, &#39;262144&#39; =3D&gt; &#39;262144&#39;<br>iscsiadm: updated &#39=
;node.conn[0].iscsi.MaxXmitDataSegmentLength&#39;, &#39;0&#39; =3D&gt; &#39=
;0&#39;<br>iscsiadm: updated &#39;node.session.nr_sessions&#39;, &#39;1&#39=
; =3D&gt; &#39;1&#39;<br>iscsiadm: updated &#39;node.session.reopen_max&#39=
;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;node.session.i=
scsi.FastAbort&#39;, &#39;Yes&#39; =3D&gt; &#39;Yes&#39;<br>iscsiadm: updat=
ed &#39;node.session.scan&#39;, &#39;auto&#39; =3D&gt; &#39;auto&#39;<br>is=
csiadm: looking for iface conf /etc/iscsi/ifaces/iface0<br>iscsiadm: update=
d &#39;iface.iscsi_ifacename&#39;, &#39;iface0&#39; =3D&gt; &#39;iface0&#39=
;<br>iscsiadm: updated &#39;iface.prefix_len&#39;, &#39;0&#39; =3D&gt; &#39=
;0&#39;<br>iscsiadm: updated &#39;iface.transport_name&#39;, &#39;&#39; =3D=
&gt; &#39;iser&#39;<br>iscsiadm: updated &#39;iface.vlan_id&#39;, &#39;0&#3=
9; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.vlan_priority&#39;, =
&#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.iface_num&#=
39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.mtu&#3=
9;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.port&#3=
9;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.tos&#39=
;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.ttl&#39;=
, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.tcp_wsf&#=
39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.tcp_ti=
mer_scale&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;i=
face.def_task_mgmt_timeout&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiad=
m: updated &#39;iface.erl&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm=
: updated &#39;iface.max_receive_data_len&#39;, &#39;0&#39; =3D&gt; &#39;0&=
#39;<br>iscsiadm: updated &#39;iface.first_burst_len&#39;, &#39;0&#39; =3D&=
gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.max_outstanding_r2t&#39;, &=
#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.max_burst_le=
n&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: in read_transports<br>=
iscsiadm: Adding new transport tcp<br>iscsiadm: Matched transport tcp<br>is=
csiadm: sysfs_attr_get_value: open &#39;/class/iscsi_transport/tcp&#39;/&#3=
9;handle&#39;<br>iscsiadm: sysfs_attr_get_value: open &#39;/class/iscsi_tra=
nsport/tcp&#39;/&#39;caps&#39;<br>iscsiadm: in read_transports<br>iscsiadm:=
 Updating transport tcp<br>iscsiadm: sysfs_attr_get_value: open &#39;/class=
/iscsi_transport/tcp&#39;/&#39;handle&#39;<br>iscsiadm: sysfs_attr_get_valu=
e: open &#39;/class/iscsi_transport/tcp&#39;/&#39;caps&#39;<br>iscsiadm: Co=
uld not load transport iser.Dropping interface iface0.<br><br>Looking at th=
e /sys/class/iscsi_transport and /sys/devices/virtual/iscsi_transport direc=
tories on the client system, I only see &quot;tcp&quot;. =C2=A0Should I als=
o be seeing &quot;iser&quot;? =C2=A0Is there an extra package I need to ins=
tall or step I need to take to get &quot;iser&quot; devices under the &quot=
;iscsi_transport&quot; directory?<br><br>Thanks!<br>Luis<br></blockquote></=
div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0335c6bf-af39-41bf-a5a8-bcc002bbe2c0n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0335c6bf-af39-41bf-a5a8-bcc002bbe2c0n%40googlegroups.com</a>.=
<br />

------=_Part_4399_1659819957.1669407277852--

------=_Part_4398_1193383119.1669407277852--
