Return-Path: <open-iscsi+bncBC755V5RXMKBB37YQOOAMGQE3ASR5XA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB80638F28
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 18:33:38 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id bq13-20020a05620a468d00b006fa5a75759asf6082894qkb.13
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 09:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zCiqfNfD4BayuT9f2PwsMK3W9Dfc8P3EC8tWXBfRmHc=;
        b=CcnNylFIC5RKEorCNqOMqd5bB7pSKgxZ0nvOMAYnkwRy5nOH8PjSzq4OggOvCY3/qP
         efMmdh/m2a8y3zNxgmul4Ra8N89sw7DT//2L1si+VzJ5jEccQgYcMqo9MTVTHFHtDLxK
         84Rt9i2hbWYow2cjsF+JqckB7wl2xrzp94yS5jV72rOqoaKLMEnWNcy9rUdokuxntPQR
         wEzs7DI7nC36+v5OEbSxxSVgNruUsKxX6KPeRFeOlS+D7eVFK9/yaDTDBJyxX6NtawE5
         jHeYVpKvrF0IdZaRUmnATtYkVRiP4RYhtTMak2+IF/SRiMxtTjAIXUeTpVgtyCYTqehJ
         gHVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zCiqfNfD4BayuT9f2PwsMK3W9Dfc8P3EC8tWXBfRmHc=;
        b=Du3TXdDVKnywi/ZUN2tgkOe0rUvDel29yeiDv9R6sCk0qcY5RLqX+rlGsU4oUrLT68
         VsU/KqyLfmQQPSht+nVpF8u3uLrATOtqFR69PP3oWd15xQOQWjJF9iOZERq5KjpADE19
         mc7QfFpGWTBhECAwMSS4xwehnrcBxdgNzCsOnNAgu7dOpw8uN/waK0HWDmXsIk79VQ22
         lqqHCcTebxXqlnhtssE6PBAdxW+3hn8fOizZ8AKTDojh07Eqm9NTX5ruQbEcDHTsL0LI
         Kn37T41HcxMBkvfYWt/rFvubDh6RsueH/eysHz9Q/970AKW9q6UlQs1q9hU9fWnTb8pY
         AtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCiqfNfD4BayuT9f2PwsMK3W9Dfc8P3EC8tWXBfRmHc=;
        b=TJITi98Zvc+/wjNeFlIGaSpovKDoo+fZ2AcOo96xW35VN5twyU2UdqXSuwdk+brk8u
         MTdGOEwKLmnMI+YqYiyWz4+5VsKcKOJtr1xh81fQ64y57IQVOWFHZa25gFQKds9pDcY3
         hQGUXa2Jf/SnXj+zVI60U+ah9e1FlRVj6uq97CrZIeUQG7iBNn484JnM7OFbcbynq9By
         aixjJWuQNYNn4fT22zo1Q6DJmmg20/FiKM5Nh9kkJ6U+1cTgoEhZUjFQ80WB7Og1FGRX
         Mb6jQ+OpsZK5i8sQbWpT7Asq4u1b7FmzsVEzGiUsQcY8y+yvh0YU38ZI9RVXq0TaFOxl
         pNpw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkHkNG13bAXl5k3dGTviaT+p8gGoMPhBQ8Qrgp3EhIxfRFbOKF3
	GPq5cELjAIaXHj1LFNiw7KA=
X-Google-Smtp-Source: AA0mqf4ocSEA5xkBHcO6ydBWbn80Ee8Ng2KSLK2KKoH31R9oFzG6BIP5bb5MH0NlmNy9e3UOiEsO6w==
X-Received: by 2002:a05:622a:1a15:b0:35b:ae82:5e33 with SMTP id f21-20020a05622a1a1500b0035bae825e33mr36663648qtb.328.1669397617255;
        Fri, 25 Nov 2022 09:33:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:c30b:0:b0:6f7:ed97:3d4d with SMTP id n11-20020ae9c30b000000b006f7ed973d4dls3050252qkg.11.-pod-prod-gmail;
 Fri, 25 Nov 2022 09:33:35 -0800 (PST)
X-Received: by 2002:a37:458:0:b0:6fa:1e1e:7103 with SMTP id 85-20020a370458000000b006fa1e1e7103mr34898809qke.358.1669397615337;
        Fri, 25 Nov 2022 09:33:35 -0800 (PST)
Date: Fri, 25 Nov 2022 09:33:34 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9d24cea1-f8a8-43e9-9982-c9e6df0cf770n@googlegroups.com>
In-Reply-To: <40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n@googlegroups.com>
References: <40a902fb-4a0d-4644-a8c8-e70d7c3b69d7n@googlegroups.com>
Subject: Re: iscsiadm error "Could not load transport iser"
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7018_482948283.1669397614519"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_7018_482948283.1669397614519
Content-Type: multipart/alternative; 
	boundary="----=_Part_7019_445443060.1669397614519"

------=_Part_7019_445443060.1669397614519
Content-Type: text/plain; charset="UTF-8"

The iser transport is only supported for some cards. It's normally an 
infiniband transport.

Do you have a CNA card (and infrastructure) that supports iser?

On Tuesday, November 22, 2022 at 11:28:47 PM UTC-8 Luis Navarro wrote:

> Hi all,
>
> I'm trying to test a new Ubuntu 22.04.1 LIO iSCSI target with iscsiadm 
> 2.1.5 (installed via "apt").  iscsiadm works fine over "tcp" transport but 
> always fails over the "iser" transport with the following error:
>
> iscsiadm: Could not load transport iser.Dropping interface iface0.
>
> Here are the commands I ran:
>
> $ sudo iscsiadm -m iface -I iface0 --op=new
> $ sudo iscsiadm -m iface -I iface0 -o update -n iface.transport_name -v 
> iser
> $ sudo iscsiadm -m discovery -t st -p 192.168.25.5:3260 -I iface0 -d 8
> iscsiadm: Max file limits 1024 1048576
> iscsiadm: updating defaults from '/etc/iscsi/iscsid.conf'
> iscsiadm: updated 'discovery.sendtargets.iscsi.MaxRecvDataSegmentLength', 
> '32768' => '32768'
> iscsiadm: updated 'node.startup', 'manual' => 'manual'
> iscsiadm: updated 'node.leading_login', 'No' => 'No'
> iscsiadm: updated 'node.session.timeo.replacement_timeout', '120' => '120'
> iscsiadm: updated 'node.conn[0].timeo.login_timeout', '30' => '15'
> iscsiadm: updated 'node.conn[0].timeo.logout_timeout', '15' => '15'
> iscsiadm: updated 'node.conn[0].timeo.noop_out_interval', '5' => '5'
> iscsiadm: updated 'node.conn[0].timeo.noop_out_timeout', '5' => '5'
> iscsiadm: updated 'node.session.err_timeo.abort_timeout', '15' => '15'
> iscsiadm: updated 'node.session.err_timeo.lu_reset_timeout', '30' => '30'
> iscsiadm: updated 'node.session.err_timeo.tgt_reset_timeout', '30' => '30'
> iscsiadm: updated 'node.session.initial_login_retry_max', '4' => '8'
> iscsiadm: updated 'node.session.cmds_max', '128' => '128'
> iscsiadm: updated 'node.session.queue_depth', '32' => '32'
> iscsiadm: updated 'node.session.xmit_thread_priority', '-20' => '-20'
> iscsiadm: updated 'node.session.iscsi.InitialR2T', 'No' => 'No'
> iscsiadm: updated 'node.session.iscsi.ImmediateData', 'Yes' => 'Yes'
> iscsiadm: updated 'node.session.iscsi.FirstBurstLength', '262144' => 
> '262144'
> iscsiadm: updated 'node.session.iscsi.MaxBurstLength', '16776192' => 
> '16776192'
> iscsiadm: updated 'node.conn[0].iscsi.MaxRecvDataSegmentLength', '262144' 
> => '262144'
> iscsiadm: updated 'node.conn[0].iscsi.MaxXmitDataSegmentLength', '0' => '0'
> iscsiadm: updated 'node.session.nr_sessions', '1' => '1'
> iscsiadm: updated 'node.session.reopen_max', '0' => '0'
> iscsiadm: updated 'node.session.iscsi.FastAbort', 'Yes' => 'Yes'
> iscsiadm: updated 'node.session.scan', 'auto' => 'auto'
> iscsiadm: looking for iface conf /etc/iscsi/ifaces/iface0
> iscsiadm: updated 'iface.iscsi_ifacename', 'iface0' => 'iface0'
> iscsiadm: updated 'iface.prefix_len', '0' => '0'
> iscsiadm: updated 'iface.transport_name', '' => 'iser'
> iscsiadm: updated 'iface.vlan_id', '0' => '0'
> iscsiadm: updated 'iface.vlan_priority', '0' => '0'
> iscsiadm: updated 'iface.iface_num', '0' => '0'
> iscsiadm: updated 'iface.mtu', '0' => '0'
> iscsiadm: updated 'iface.port', '0' => '0'
> iscsiadm: updated 'iface.tos', '0' => '0'
> iscsiadm: updated 'iface.ttl', '0' => '0'
> iscsiadm: updated 'iface.tcp_wsf', '0' => '0'
> iscsiadm: updated 'iface.tcp_timer_scale', '0' => '0'
> iscsiadm: updated 'iface.def_task_mgmt_timeout', '0' => '0'
> iscsiadm: updated 'iface.erl', '0' => '0'
> iscsiadm: updated 'iface.max_receive_data_len', '0' => '0'
> iscsiadm: updated 'iface.first_burst_len', '0' => '0'
> iscsiadm: updated 'iface.max_outstanding_r2t', '0' => '0'
> iscsiadm: updated 'iface.max_burst_len', '0' => '0'
> iscsiadm: in read_transports
> iscsiadm: Adding new transport tcp
> iscsiadm: Matched transport tcp
> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'handle'
> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'caps'
> iscsiadm: in read_transports
> iscsiadm: Updating transport tcp
> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'handle'
> iscsiadm: sysfs_attr_get_value: open '/class/iscsi_transport/tcp'/'caps'
> iscsiadm: Could not load transport iser.Dropping interface iface0.
>
> Looking at the /sys/class/iscsi_transport and 
> /sys/devices/virtual/iscsi_transport directories on the client system, I 
> only see "tcp".  Should I also be seeing "iser"?  Is there an extra package 
> I need to install or step I need to take to get "iser" devices under the 
> "iscsi_transport" directory?
>
> Thanks!
> Luis
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9d24cea1-f8a8-43e9-9982-c9e6df0cf770n%40googlegroups.com.

------=_Part_7019_445443060.1669397614519
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>The iser transport is only supported for some cards. It's normally an =
infiniband transport.</div><div><br></div><div>Do you have a CNA card (and =
infrastructure) that supports iser?<br></div><br><div class=3D"gmail_quote"=
><div dir=3D"auto" class=3D"gmail_attr">On Tuesday, November 22, 2022 at 11=
:28:47 PM UTC-8 Luis Navarro wrote:<br/></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204=
); padding-left: 1ex;">Hi all,<br><br>I&#39;m trying to test a new Ubuntu 2=
2.04.1 LIO iSCSI target with iscsiadm 2.1.5 (installed via &quot;apt&quot;)=
. =C2=A0iscsiadm works fine over &quot;tcp&quot; transport but always fails=
 over the &quot;iser&quot; transport with the following error:<br><br>iscsi=
adm: Could not load transport iser.Dropping interface iface0.<br><br>Here a=
re the commands I ran:<br><br>$ sudo iscsiadm -m iface -I iface0 --op=3Dnew=
<br>$ sudo iscsiadm -m iface -I iface0 -o update -n iface.transport_name -v=
 iser<br>$ sudo iscsiadm -m discovery -t st -p <a href=3D"http://192.168.25=
.5:3260" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https:/=
/www.google.com/url?hl=3Den&amp;q=3Dhttp://192.168.25.5:3260&amp;source=3Dg=
mail&amp;ust=3D1669483705321000&amp;usg=3DAOvVaw0uC09YQoz2gX27MJtub-aC">192=
.168.25.5:3260</a> -I iface0 -d 8<br>iscsiadm: Max file limits 1024 1048576=
<br>iscsiadm: updating defaults from &#39;/etc/iscsi/iscsid.conf&#39;<br>is=
csiadm: updated &#39;discovery.sendtargets.iscsi.MaxRecvDataSegmentLength&#=
39;, &#39;32768&#39; =3D&gt; &#39;32768&#39;<br>iscsiadm: updated &#39;node=
.startup&#39;, &#39;manual&#39; =3D&gt; &#39;manual&#39;<br>iscsiadm: updat=
ed &#39;node.leading_login&#39;, &#39;No&#39; =3D&gt; &#39;No&#39;<br>iscsi=
adm: updated &#39;node.session.timeo.replacement_timeout&#39;, &#39;120&#39=
; =3D&gt; &#39;120&#39;<br>iscsiadm: updated &#39;node.conn[0].timeo.login_=
timeout&#39;, &#39;30&#39; =3D&gt; &#39;15&#39;<br>iscsiadm: updated &#39;n=
ode.conn[0].timeo.logout_timeout&#39;, &#39;15&#39; =3D&gt; &#39;15&#39;<br=
>iscsiadm: updated &#39;node.conn[0].timeo.noop_out_interval&#39;, &#39;5&#=
39; =3D&gt; &#39;5&#39;<br>iscsiadm: updated &#39;node.conn[0].timeo.noop_o=
ut_timeout&#39;, &#39;5&#39; =3D&gt; &#39;5&#39;<br>iscsiadm: updated &#39;=
node.session.err_timeo.abort_timeout&#39;, &#39;15&#39; =3D&gt; &#39;15&#39=
;<br>iscsiadm: updated &#39;node.session.err_timeo.lu_reset_timeout&#39;, &=
#39;30&#39; =3D&gt; &#39;30&#39;<br>iscsiadm: updated &#39;node.session.err=
_timeo.tgt_reset_timeout&#39;, &#39;30&#39; =3D&gt; &#39;30&#39;<br>iscsiad=
m: updated &#39;node.session.initial_login_retry_max&#39;, &#39;4&#39; =3D&=
gt; &#39;8&#39;<br>iscsiadm: updated &#39;node.session.cmds_max&#39;, &#39;=
128&#39; =3D&gt; &#39;128&#39;<br>iscsiadm: updated &#39;node.session.queue=
_depth&#39;, &#39;32&#39; =3D&gt; &#39;32&#39;<br>iscsiadm: updated &#39;no=
de.session.xmit_thread_priority&#39;, &#39;-20&#39; =3D&gt; &#39;-20&#39;<b=
r>iscsiadm: updated &#39;node.session.iscsi.InitialR2T&#39;, &#39;No&#39; =
=3D&gt; &#39;No&#39;<br>iscsiadm: updated &#39;node.session.iscsi.Immediate=
Data&#39;, &#39;Yes&#39; =3D&gt; &#39;Yes&#39;<br>iscsiadm: updated &#39;no=
de.session.iscsi.FirstBurstLength&#39;, &#39;262144&#39; =3D&gt; &#39;26214=
4&#39;<br>iscsiadm: updated &#39;node.session.iscsi.MaxBurstLength&#39;, &#=
39;16776192&#39; =3D&gt; &#39;16776192&#39;<br>iscsiadm: updated &#39;node.=
conn[0].iscsi.MaxRecvDataSegmentLength&#39;, &#39;262144&#39; =3D&gt; &#39;=
262144&#39;<br>iscsiadm: updated &#39;node.conn[0].iscsi.MaxXmitDataSegment=
Length&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;node=
.session.nr_sessions&#39;, &#39;1&#39; =3D&gt; &#39;1&#39;<br>iscsiadm: upd=
ated &#39;node.session.reopen_max&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>=
iscsiadm: updated &#39;node.session.iscsi.FastAbort&#39;, &#39;Yes&#39; =3D=
&gt; &#39;Yes&#39;<br>iscsiadm: updated &#39;node.session.scan&#39;, &#39;a=
uto&#39; =3D&gt; &#39;auto&#39;<br>iscsiadm: looking for iface conf /etc/is=
csi/ifaces/iface0<br>iscsiadm: updated &#39;iface.iscsi_ifacename&#39;, &#3=
9;iface0&#39; =3D&gt; &#39;iface0&#39;<br>iscsiadm: updated &#39;iface.pref=
ix_len&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;ifac=
e.transport_name&#39;, &#39;&#39; =3D&gt; &#39;iser&#39;<br>iscsiadm: updat=
ed &#39;iface.vlan_id&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: up=
dated &#39;iface.vlan_priority&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>isc=
siadm: updated &#39;iface.iface_num&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<b=
r>iscsiadm: updated &#39;iface.mtu&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br=
>iscsiadm: updated &#39;iface.port&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br=
>iscsiadm: updated &#39;iface.tos&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>=
iscsiadm: updated &#39;iface.ttl&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>i=
scsiadm: updated &#39;iface.tcp_wsf&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<b=
r>iscsiadm: updated &#39;iface.tcp_timer_scale&#39;, &#39;0&#39; =3D&gt; &#=
39;0&#39;<br>iscsiadm: updated &#39;iface.def_task_mgmt_timeout&#39;, &#39;=
0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.erl&#39;, &#39;0=
&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.max_receive_data_=
len&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &#39;iface.f=
irst_burst_len&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscsiadm: updated &=
#39;iface.max_outstanding_r2t&#39;, &#39;0&#39; =3D&gt; &#39;0&#39;<br>iscs=
iadm: updated &#39;iface.max_burst_len&#39;, &#39;0&#39; =3D&gt; &#39;0&#39=
;<br>iscsiadm: in read_transports<br>iscsiadm: Adding new transport tcp<br>=
iscsiadm: Matched transport tcp<br>iscsiadm: sysfs_attr_get_value: open &#3=
9;/class/iscsi_transport/tcp&#39;/&#39;handle&#39;<br>iscsiadm: sysfs_attr_=
get_value: open &#39;/class/iscsi_transport/tcp&#39;/&#39;caps&#39;<br>iscs=
iadm: in read_transports<br>iscsiadm: Updating transport tcp<br>iscsiadm: s=
ysfs_attr_get_value: open &#39;/class/iscsi_transport/tcp&#39;/&#39;handle&=
#39;<br>iscsiadm: sysfs_attr_get_value: open &#39;/class/iscsi_transport/tc=
p&#39;/&#39;caps&#39;<br>iscsiadm: Could not load transport iser.Dropping i=
nterface iface0.<br><br>Looking at the /sys/class/iscsi_transport and /sys/=
devices/virtual/iscsi_transport directories on the client system, I only se=
e &quot;tcp&quot;. =C2=A0Should I also be seeing &quot;iser&quot;? =C2=A0Is=
 there an extra package I need to install or step I need to take to get &qu=
ot;iser&quot; devices under the &quot;iscsi_transport&quot; directory?<br><=
br>Thanks!<br>Luis<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9d24cea1-f8a8-43e9-9982-c9e6df0cf770n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/9d24cea1-f8a8-43e9-9982-c9e6df0cf770n%40googlegroups.com</a>.=
<br />

------=_Part_7019_445443060.1669397614519--

------=_Part_7018_482948283.1669397614519--
