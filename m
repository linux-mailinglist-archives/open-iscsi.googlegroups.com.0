Return-Path: <open-iscsi+bncBC755V5RXMKBBFXCQH2QKGQECY5WD4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B771B4A7F
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 18:30:15 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id f9sf2733656qvt.14
        for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 09:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YfSCN3NSoJzfGb0ysfFB/MCnfKe42g+0v/u3aSEFcrg=;
        b=Dx7VXoTmebn9QZ+niagcpiQROl7Ie8Iknt81cQ7Q6xDYvBykSacbQQSamAkM7nS2y9
         DUGCumsCASEoPnttV8UvTimv2M6Xu9THO3XxL9b+sAk04dV7k4EcpEijlqg+wM8Qo8QN
         ZX9ZKv5Ndeqp5/PO6Sr0769aKvtHy9ojh2YX5IOZh3CJe4MaU3xe7qjrNMgchBhIP7Vp
         1eQY74+mRxQ03cC8xx5PYga4RPfGwn6m4Szpe8PESy+qmo+5kTAwcWNK5W5zR61nFP7p
         fdiOLuImjdEsaFw+Ol4IWRPQvUboBJoyCzKKm165gkpOXIRLO+bBaDDe21ObNf92TutM
         u/Yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YfSCN3NSoJzfGb0ysfFB/MCnfKe42g+0v/u3aSEFcrg=;
        b=UkJ52ml53Qb0QlfR3CJy/Jhk1rhkj8WVrlIvguxtRZ52ZNNAh0Sns4xVQBdZXFnNj0
         Ra9R2+FSg41pcrxp22g+uf052flp6cL+KYjRvItRyiUbr0LtLgSFlftytz6wPSk8yVY3
         7XejEGuWsOnVleTXvkRymyhTDPLza3Zx3EqZUVV9jzhGy2mnvFlDrPULs4L+fAihUNQ2
         T/biS3pziWryCOQ004QxPOTh4LRypzEq4qW+5duMgG2p6R0hNRLUeoVmEiqgqn4uTaQX
         gGLbCP8PAVB49OfMc4H1AO7VfSEsNxXvu4RyRzoP/OcGuRvWmB/YDZc4FxLtjdSJH6G1
         lTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YfSCN3NSoJzfGb0ysfFB/MCnfKe42g+0v/u3aSEFcrg=;
        b=FBncz9ifFjEssEiIvhQ++kSGbP/WC5Nzwc+IIPg9D+myD/YY92Mfj2UhkKa+ZyxO2y
         5KgQCFNwoDZdb0ypQPPxp5UhRfrA6Z3Ql0rCfxfNG9CtCxQB6fRaGGymyd8NikF76Y6D
         NedW9DTc4jSjFMH3XdstQ728nzmGoLQ0h5djnh2Cx7dxGhQm+NG2BcnZkKhKoqrFAWU9
         suKzc26m+suLiky+RJP20uvm+yYbK7Bc5JgTVrcbKWTuMOePpwmDtiFm896mApCMHtut
         tCdHmBfn21pT/3iAUR2WqNp0LqBMl974SGzmcD+/t63KPvD6xTEoi5VSL02LOX5/aiEX
         7K3A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYZP+xe7zBG5cwlunEFY9S/iVBIKLSt1fEiEd/PGqlFkpG4naXc
	tL9lNBhyDFYOtoU/FVuI8gI=
X-Google-Smtp-Source: APiQypLJouxYbqv9cHGtH2fQSuR/9ysM408DcBbSFNolE0XctSw8Xyf5Gk/tKUui9RVWet4f2hcNvw==
X-Received: by 2002:a0c:e787:: with SMTP id x7mr2819843qvn.229.1587573014550;
        Wed, 22 Apr 2020 09:30:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:528b:: with SMTP id v11ls721048qvr.9.gmail; Wed, 22 Apr
 2020 09:30:14 -0700 (PDT)
X-Received: by 2002:ad4:43c1:: with SMTP id o1mr25842341qvs.56.1587573013747;
        Wed, 22 Apr 2020 09:30:13 -0700 (PDT)
Date: Wed, 22 Apr 2020 09:30:12 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <03d325e8-a7b7-44bc-a31c-419ba09b1890@googlegroups.com>
In-Reply-To: <5E9FEA90020000A1000387D3@gwsmtp.uni-regensburg.de>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <618_1587494664_5E9F3F08_618_445_1_7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
 <5E9FEA90020000A1000387D3@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] Re: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2808_47247045.1587573013113"
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

------=_Part_2808_47247045.1587573013113
Content-Type: multipart/alternative; 
	boundary="----=_Part_2809_75883196.1587573013114"

------=_Part_2809_75883196.1587573013114
Content-Type: text/plain; charset="UTF-8"

On Tuesday, April 21, 2020 at 11:56:23 PM UTC-7, Uli wrote:
>
> >>> The Lee-Man <leeman.duncan@gmail.com> schrieb am 21.04.2020 um 20:44 
> in 
> Nachricht 
> <618_1587494664_5E9F3F08_618_445_1_7f583720-8a84-4872-8d1a-5cd284295c22@googlegr 
>
> ups.com>: 
> > On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wrote: 
> >> 
> >> [reposting, as the previous one seems to be lost] 
> >> 
> >> Hi all, 
> >> I have a question regarding udev events when using iscsi disks. 
> >> 
> >> By using "udevadm monitor" I can see that events are generated when I 
> >> login and logout from an iscsi portal/resource, creating/destroying the 
> >> relative links under /dev/ 
> >> 
> >> However, I can not see anything when the remote machine simple 
> >> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout 
> expiring, I 
> >> don't see anything about a removed disk (and the links under /dev/ 
> remains 
> >> unaltered, indeed). At the same time, when the remote machine and disk 
> >> become available again, no reconnection events happen. 
> >> 
> > 
> > Because of the design of iSCSI, there is no way for the initiator to 
> know 
> > the server has gone away. The only time an initiator might figure this 
> out 
> > is when it tries to communicate with the target. 
>
> My knowlege of the SCSI stack is quite poor, but I think the last 
> revisions of parallel SCSI (like Ultra 320 (or was it 160?)) had a concept 
> of "domain validation". AFAIK the leatter meant measuring the quality of 
> the wires, adjusting the transfer speed. 
> While basically SCSI assumes "the bus" won't go away magically, a future 
> iSCSI standard might contain  regular "bus checks" to trigger recovery 
> actions if the "bus" (network transport connection) seems to be gone. 
>
> > 
> > This assumes we are not using some sort of directory service, like iSNS, 
> > which can send asynchronous notifications. But even then, the iSNS 
> server 
> > would have to somehow know that the target went down. If the target 
> > crashed, that might be difficult to ascertain. 
>
> To be picky: If the traget went down (like a classical failing SCSI disk), 
> it could issue some attention message, but when the transport went down, no 
> such message can be received. So I think there's a difference between 
> "target down" (device not present, device fails to respond) and "bus down" 
> (no communication possible any more). In the second case no assumptions can 
> be made about the health of the traget device. 
>
> > 
> > So in the absence of some asynchronous notification, the initiator only 
> > knows the target is not responding if it tries to talk to that target. 
> > 
> > Normally iscsid defaults to sending periodic NO-OPs to the target every 
> 5 
> > seconds. So if the target goes away, the initiator usually notices, even 
> if 
> > no regular I/O is occurring. 
>
> So the target went away, or the bus went down? 
>

The initiator does not know the difference. As you know, there are dozens 
of things (conservatively) that can go wrong, which is why I say the disk 
"goes away". It could be sleeping. It could be dead. The cable could be 
unplugged. The system could be rebooting. The switch could be down. The 
ACLs could have changed (which is how I simulate a target going away). 

>
> > 
> > But this is where the error recovery gets tricky, because iscsi tries to 
> > handle "lossy" connections. What if the server will be right back? Maybe 
> > it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps 
> > trying to reconnect. As a matter of fact, if you stop iscsid and restart 
> > it, it sees the failed connection and retries it -- forever, by default. 
> I 
> > actually added a configuration parameter called reopen_max, that can 
> limit 
> > the number of retries. But there was pushback on changing the default 
> value 
> > from 0, which is "retry forever". 
> > 
> > So what exactly do you think the system should do when a connection 
> "goes 
> > away"? How long does it have to be gone to be considered gone for good? 
> If 
> > the target comes back "later" should it get the same disc name? Should 
> we 
> > retry, and if so how much before we give up? I'm interested in your 
> views, 
> > since it seems like a non-trivial problem to me. 
>
> IMHO a "bus down" is a critical event affecting _all_ devices on that bus, 
> not just a single target. Well, it might be some extra noise if those other 
> targets have no I/O outstanding, but it's better to know that the bus is 
> down before initiating a transfer rather than concluding seconds later that 
> the target seems unreachable for some reasons unknown. 
>

There are 3 error handling levels built into the iSCSI protocol. I think 
you'll need to change/augment the protocol to change this. They are 
ERL=[0|1|2]. Error level 0 is the default, and the only one supported by 
open-iscsi. That just means we end the connection reconnect. ERL=1 adds 
handling digest error handling, and ERL=2 adds session recovery on top of 
that, i.e. try to recover the session before disconnecting and reconnecting.

It is up to the transport (usually TCP/IP) to tell us of transport errors. 
At the open-iscsi level, the transport should either "just work", or it 
should fail and tell us it failed.

But perhaps I'm being redundant and you know all this.

>
> > 
> >> 
> >> I can read here that, years ago, a patch was in progress to give better 
> >> integration with udev when a device disconnects/reconnects. Did the 
> patch 
> >> got merged? Or does the one I described above remain the expected 
> behavior? 
> >> Can be changed? 
> >> 
> > 
> > So you're saying as soon as a bad connection is detected (perhaps by a 
> > NOOP), the device should go away? 
>
> Maybe the state should be similar to a device being in power-save mode: 
> It's not accessible right now, but should be woke up ASAP. See my earlier 
> comparison to NFS hard-mounts... 
>

I think the current code works well enough when the target goes away for a 
"short" period of time, but again it depends on how it goes away. Not all 
disappearances are equal, though we really can't tell them apart very well. 

>
> Regards, 
> Ulrich 
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/03d325e8-a7b7-44bc-a31c-419ba09b1890%40googlegroups.com.

------=_Part_2809_75883196.1587573013114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, April 21, 2020 at 11:56:23 PM UTC-7, Uli wrote=
:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">&gt;&gt;&gt; The Lee-Man &lt;=
<a href=3D"mailto:leeman.duncan@gmail.com" target=3D"_blank" rel=3D"nofollo=
w" onmousedown=3D"this.href=3D&#39;mailto:leeman.duncan@gmail.com&#39;;retu=
rn true;" onclick=3D"this.href=3D&#39;mailto:leeman.duncan@gmail.com&#39;;r=
eturn true;">leeman.duncan@gmail.com</a>&gt; schrieb am 21.04.2020 um 20:44=
 in
<br>Nachricht
<br>&lt;618_1587494664_5E9F3F08_618_<wbr>445_1_7f583720-8a84-4872-8d1a-<wbr=
>5cd284295c22@googlegr
<br><a href=3D"http://ups.com" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fups.com\=
x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFzT1JFRoIszdmfpQyeg7uDDTc3rQ&#39;;r=
eturn true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhtt=
p%3A%2F%2Fups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFzT1JFRoIszdmfpQy=
eg7uDDTc3rQ&#39;;return true;">ups.com</a>&gt;:
<br>&gt; On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wr=
ote:
<br>&gt;&gt;
<br>&gt;&gt; [reposting, as the previous one seems to be lost]
<br>&gt;&gt;
<br>&gt;&gt; Hi all,
<br>&gt;&gt; I have a question regarding udev events when using iscsi disks=
.
<br>&gt;&gt;
<br>&gt;&gt; By using &quot;udevadm monitor&quot; I can see that events are=
 generated when I=20
<br>&gt;&gt; login and logout from an iscsi portal/resource, creating/destr=
oying the=20
<br>&gt;&gt; relative links under /dev/
<br>&gt;&gt;
<br>&gt;&gt; However, I can not see anything when the remote machine simple=
=20
<br>&gt;&gt; dies/reboots/disconnects: while &quot;dmesg&quot; shows the is=
csi timeout expiring, I=20
<br>&gt;&gt; don&#39;t see anything about a removed disk (and the links und=
er /dev/ remains=20
<br>&gt;&gt; unaltered, indeed). At the same time, when the remote machine =
and disk=20
<br>&gt;&gt; become available again, no reconnection events happen.
<br>&gt;&gt;
<br>&gt;=20
<br>&gt; Because of the design of iSCSI, there is no way for the initiator =
to know=20
<br>&gt; the server has gone away. The only time an initiator might figure =
this out=20
<br>&gt; is when it tries to communicate with the target.
<br>
<br>My knowlege of the SCSI stack is quite poor, but I think the last revis=
ions of parallel SCSI (like Ultra 320 (or was it 160?)) had a concept of &q=
uot;domain validation&quot;. AFAIK the leatter meant measuring the quality =
of the wires, adjusting the transfer speed.
<br>While basically SCSI assumes &quot;the bus&quot; won&#39;t go away magi=
cally, a future iSCSI standard might contain =C2=A0regular &quot;bus checks=
&quot; to trigger recovery actions if the &quot;bus&quot; (network transpor=
t connection) seems to be gone.
<br>
<br>&gt;=20
<br>&gt; This assumes we are not using some sort of directory service, like=
 iSNS,=20
<br>&gt; which can send asynchronous notifications. But even then, the iSNS=
 server=20
<br>&gt; would have to somehow know that the target went down. If the targe=
t=20
<br>&gt; crashed, that might be difficult to ascertain.
<br>
<br>To be picky: If the traget went down (like a classical failing SCSI dis=
k), it could issue some attention message, but when the transport went down=
, no such message can be received. So I think there&#39;s a difference betw=
een &quot;target down&quot; (device not present, device fails to respond) a=
nd &quot;bus down&quot; (no communication possible any more). In the second=
 case no assumptions can be made about the health of the traget device.
<br>
<br>&gt;=20
<br>&gt; So in the absence of some asynchronous notification, the initiator=
 only=20
<br>&gt; knows the target is not responding if it tries to talk to that tar=
get.
<br>&gt;=20
<br>&gt; Normally iscsid defaults to sending periodic NO-OPs to the target =
every 5=20
<br>&gt; seconds. So if the target goes away, the initiator usually notices=
, even if=20
<br>&gt; no regular I/O is occurring.
<br>
<br>So the target went away, or the bus went down?
<br></blockquote><div><br></div><div>The initiator does not know the differ=
ence. As you know, there are dozens of things (conservatively) that can go =
wrong, which is why I say the disk &quot;goes away&quot;. It could be sleep=
ing. It could be dead. The cable could be unplugged. The system could be re=
booting. The switch could be down. The ACLs could have changed (which is ho=
w I simulate a target going away). <br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddi=
ng-left: 1ex;">
<br>&gt;=20
<br>&gt; But this is where the error recovery gets tricky, because iscsi tr=
ies to=20
<br>&gt; handle &quot;lossy&quot; connections. What if the server will be r=
ight back? Maybe=20
<br>&gt; it&#39;s rebooting? Maybe the cable will be plugged back in? So is=
csi keeps=20
<br>&gt; trying to reconnect. As a matter of fact, if you stop iscsid and r=
estart=20
<br>&gt; it, it sees the failed connection and retries it -- forever, by de=
fault. I=20
<br>&gt; actually added a configuration parameter called reopen_max, that c=
an limit=20
<br>&gt; the number of retries. But there was pushback on changing the defa=
ult value=20
<br>&gt; from 0, which is &quot;retry forever&quot;.
<br>&gt;=20
<br>&gt; So what exactly do you think the system should do when a connectio=
n &quot;goes=20
<br>&gt; away&quot;? How long does it have to be gone to be considered gone=
 for good? If=20
<br>&gt; the target comes back &quot;later&quot; should it get the same dis=
c name? Should we=20
<br>&gt; retry, and if so how much before we give up? I&#39;m interested in=
 your views,=20
<br>&gt; since it seems like a non-trivial problem to me.
<br>
<br>IMHO a &quot;bus down&quot; is a critical event affecting _all_ devices=
 on that bus, not just a single target. Well, it might be some extra noise =
if those other targets have no I/O outstanding, but it&#39;s better to know=
 that the bus is down before initiating a transfer rather than concluding s=
econds later that the target seems unreachable for some reasons unknown.
<br></blockquote><div><br></div><div>There are 3 error handling levels buil=
t into the iSCSI protocol. I think you&#39;ll need to change/augment the pr=
otocol to change this. They are ERL=3D[0|1|2]. Error level 0 is the default=
, and the only one supported by open-iscsi. That just means we end the conn=
ection reconnect. ERL=3D1 adds handling digest error handling, and ERL=3D2 =
adds session recovery on top of that, i.e. try to recover the session befor=
e disconnecting and reconnecting.</div><div><br></div><div>It is up to the =
transport (usually TCP/IP) to tell us of transport errors. At the open-iscs=
i level, the transport should either &quot;just work&quot;, or it should fa=
il and tell us it failed.</div><div><br></div><div>But perhaps I&#39;m bein=
g redundant and you know all this.<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddin=
g-left: 1ex;">
<br>&gt;=20
<br>&gt;&gt;
<br>&gt;&gt; I can read here that, years ago, a patch was in progress to gi=
ve better=20
<br>&gt;&gt; integration with udev when a device disconnects/reconnects. Di=
d the patch=20
<br>&gt;&gt; got merged? Or does the one I described above remain the expec=
ted behavior?=20
<br>&gt;&gt; Can be changed?
<br>&gt;&gt;
<br>&gt;=20
<br>&gt; So you&#39;re saying as soon as a bad connection is detected (perh=
aps by a=20
<br>&gt; NOOP), the device should go away?=20
<br>
<br>Maybe the state should be similar to a device being in power-save mode:=
 It&#39;s not accessible right now, but should be woke up ASAP. See my earl=
ier comparison to NFS hard-mounts...
<br></blockquote><div><br></div><div>I think the current code works well en=
ough when the target goes away for a &quot;short&quot; period of time, but =
again it depends on how it goes away. Not all disappearances are equal, tho=
ugh we really can&#39;t tell them apart very well. <br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px =
#ccc solid;padding-left: 1ex;">
<br>Regards,
<br>Ulrich
<br>
<br><br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/03d325e8-a7b7-44bc-a31c-419ba09b1890%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/03d325e8-a7b7-44bc-a31c-419ba09b1890%40googlegroups.com</a>.<b=
r />

------=_Part_2809_75883196.1587573013114--

------=_Part_2808_47247045.1587573013113--
