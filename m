Return-Path: <open-iscsi+bncBC755V5RXMKBBLGC66DAMGQECSTJ4MI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCB43B940D
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Jul 2021 17:37:17 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id b11-20020ac812cb0000b0290250bfff0028sf3549743qtj.9
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Jul 2021 08:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=g2UG30dpUXOZLPVqI+ftZE9fAy/tZmdshpmIjq9MSpY=;
        b=a4gCbaJOA/5ZB20eZly9txOADQebfYMw9B5SZCXm1B0Piy4GqRdTLWrXUeX3qTzAng
         6V3fBpyX3ltpvltSp2SJzN6ntfC8AsJNG9I563JXVR2wg3p62SwlaPjVvfky7XeMyFB1
         GsFx63aDT6Yp5hVDh88DSNNFHVvzkZJz13kyESJVE1BsVhh+z1lWERLh8+B9IdPospIk
         FuFmNlsKd6gb3f/NTy/UG0Z2C5ifEWVd4SgYcJhtFrBy4CNq187udk/PlhVu+VdoEjmw
         /ipA4D3Rt9hKjqOa784vzXezlCxWM0Lv4FsvowDv2XLarT6FHyMyOdLkQDP563do4Y7V
         kNPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g2UG30dpUXOZLPVqI+ftZE9fAy/tZmdshpmIjq9MSpY=;
        b=kzfVqbScN10qKhI1p6RdDcw+4MCN3W5fTJ8lIQ+VnbUUvFwKOxKFDSXOPo4IuTv3t7
         hLdX9xcj2c/VFmjJyu1vOXYBinqCgAfIQT2DW0yWRH1R8WHn/eu0wvbrD2O1gsUZagtJ
         b0U6bU1RVa4YSSRKmkVJNhJFmhsjbDuj3wEPtJg5RjXPLLCFNlqROeHSg6ptAcaOQcxW
         3Dj5tSQgxze0PcTsa/QyS+wDBWk2frQiZRd35HTEDh7oEecQKzLk7I3N2y92LlyZyMdt
         ZQzp+j1j2li7fZWfbEpEOfgL39sps20FRmhUKanPG+6nVUSbiQMh9ow9Lu67rkSsnXWj
         pYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g2UG30dpUXOZLPVqI+ftZE9fAy/tZmdshpmIjq9MSpY=;
        b=bkN3UOC6+OMynWDHKKVuC88ruHDvPMKZ+gTbBXmBnP0HLh6ikVKguAxymH3nY0ChWX
         yXAiAwSf98XcfHawpCEzWCIRIywBKLR59wu7hJte5nBPqh3cgJQ++OWgPUvmGJ1fMyCr
         fKdHk4ZEhrHF5DTplQtd+1WWhZ6xi/JGPuPMR83pV6tgPVSaPtEnQ/E1TNa/kDygK0bo
         xIP2tN8RQt8Cxy1EhxoTXTpaxdrsBvyMArp17ythAouzXkqdlG3CybY86eDUGI79Qem4
         C9ZpNYo+pXzVlaYIKhT99vMRPhX92ruxNW4pceOlufmV6jk2OqEraHFUAFErLSUhycjf
         PCWA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533yQ0TxBWzTxhDJ7f2L4mI2kH7XG5pPxyesYN2ouDks8SY43WkW
	6DTQPfm9+NK+Bk/0d/wS7K8=
X-Google-Smtp-Source: ABdhPJwCuXkQr/tzP7Boob6cKsRz/dD9Xr4rqDdFnReQgFwnsrMPkkLfYasNFbAS+QOVFNSJpFX13w==
X-Received: by 2002:a05:6214:170f:: with SMTP id db15mr479110qvb.48.1625153836573;
        Thu, 01 Jul 2021 08:37:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e814:: with SMTP id a20ls4003538qkg.4.gmail; Thu, 01 Jul
 2021 08:37:16 -0700 (PDT)
X-Received: by 2002:a37:315:: with SMTP id 21mr572878qkd.491.1625153835736;
        Thu, 01 Jul 2021 08:37:15 -0700 (PDT)
Date: Thu, 1 Jul 2021 08:37:15 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <303b57a8-5d06-44ef-9212-ee350ea6bd1fn@googlegroups.com>
In-Reply-To: <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>
References: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
 <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
 <B3425A37-BF5B-48DE-A3DB-3DFC856F19E7@comcast.net>
 <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>
Subject: Re: Antw: [EXT] ISCSI Target and Initiator on same host
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1284_696438124.1625153835150"
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

------=_Part_1284_696438124.1625153835150
Content-Type: multipart/alternative; 
	boundary="----=_Part_1285_1817041964.1625153835150"

------=_Part_1285_1817041964.1625153835150
Content-Type: text/plain; charset="UTF-8"

I need a bit more information about your setup. What target are you using? 
I'm guessing LIO, since that's the most common (using targetcli), but there 
are others, and each one is different with respect to ACLs, using 
passwords, etc.

I use LIO/targetcli, and I usually work with the initiator and target on 
the same system, no problem. This is a network protocol, so it shouldn't 
matter if the initiator and target are on the same system or miles apart, 
as long as they are connected via the network.

With LIO, you have to either add your initiator IQN to the ACL for the 
target, or you need to put the target in "demo" mode. Though poorly named, 
demo mode allows connection without ACLs (it generates the ACLs on the fly).

Are you using initiator and/or target name/password protection? If so, that 
adds a layer of complication. For testing, I do not set up any 
names/passwords.

How to you try to connect to your target? What distribution are you on and 
what version of that distro? Do you run iscsi discovery first, then 
connect? Show us the sequence of commands you use, and the actual error 
messages you say you are getting?

Are you setting up the target the automatically reconnect on each reboot? 
If so, the steps you take to do that may differ per distrubution. And what 
systemd services do you have running?

You need to supply much more information, in general, when asking for 
technical help. :)

On Wednesday, June 30, 2021 at 8:15:03 AM UTC-7 riaan.p...@4cgroup.co.za 
wrote:

> I get strange messages in my logs when i tried do that. and get disk 
> "flapping" when the disk just appear and reappear continuously after a 
> reboot.   logically it would make sense that you can do this, but 
> practically  there is weird issues. Would you guys say it might be a 
> misconfiguration ?
>
> On Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:
>
>>
>>
>> > On Jun 30, 2021, at 7:29 AM, Ulrich Windl <
>> Ulrich...@rz.uni-regensburg.de> wrote:
>> > 
>> > I think I did that about 10 years ago...
>> > 
>> >>>> Riaan Pretorius <riaan.p...@4cgroup.co.za> schrieb am 30.06.2021 um 
>> 12:41
>> > in Nachricht <07b30064-72b3-42c1...@googlegroups.com>:
>> >> I have an interesting question to ask:
>> >> 
>> >> Is it possible to share the target on the same server as a initiator ?
>> >> e.g. server1: target -> server1: initiator 
>>
>> Yes, I've used that in a test setup when I needed to put a file system on 
>> iSCSI (to test pNFS).
>>
>> paul
>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/303b57a8-5d06-44ef-9212-ee350ea6bd1fn%40googlegroups.com.

------=_Part_1285_1817041964.1625153835150
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I need a bit more information about your setup. What target are you us=
ing? I'm guessing LIO, since that's the most common (using targetcli), but =
there are others, and each one is different with respect to ACLs, using pas=
swords, etc.</div><div><br></div><div>I use LIO/targetcli, and I usually wo=
rk with the initiator and target on the same system, no problem. This is a =
network protocol, so it shouldn't matter if the initiator and target are on=
 the same system or miles apart, as long as they are connected via the netw=
ork.</div><div><br></div><div>With LIO, you have to either add your initiat=
or IQN to the ACL for the target, or you need to put the target in "demo" m=
ode. Though poorly named, demo mode allows connection without ACLs (it gene=
rates the ACLs on the fly).</div><div><br></div><div>Are you using initiato=
r and/or target name/password protection? If so, that adds a layer of compl=
ication. For testing, I do not set up any names/passwords.</div><div><br></=
div><div>How to you try to connect to your target? What distribution are yo=
u on and what version of that distro? Do you run iscsi discovery first, the=
n connect? Show us the sequence of commands you use, and the actual error m=
essages you say you are getting?</div><div><br></div><div>Are you setting u=
p the target the automatically reconnect on each reboot? If so, the steps y=
ou take to do that may differ per distrubution. And what systemd services d=
o you have running?</div><div><br></div><div>You need to supply much more i=
nformation, in general, when asking for technical help. :)<br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday=
, June 30, 2021 at 8:15:03 AM UTC-7 riaan.p...@4cgroup.co.za wrote:<br/></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-l=
eft: 1px solid rgb(204, 204, 204); padding-left: 1ex;">I get strange messag=
es in my logs when i tried do that. and get disk &quot;flapping&quot; when =
the disk just appear and reappear continuously after a reboot.=C2=A0 =C2=A0=
logically it would make sense that you can do this, but practically=C2=A0 t=
here is weird issues. Would you guys say it might be a misconfiguration ?<b=
r><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On =
Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
<br>
<br>&gt; On Jun 30, 2021, at 7:29 AM, Ulrich Windl &lt;<a rel=3D"nofollow">=
Ulrich...@rz.uni-regensburg.de</a>&gt; wrote:
<br>&gt;=20
<br>&gt; I think I did that about 10 years ago...
<br>&gt;=20
<br>&gt;&gt;&gt;&gt; Riaan Pretorius &lt;<a rel=3D"nofollow">riaan.p...@4cg=
roup.co.za</a>&gt; schrieb am 30.06.2021 um 12:41
<br>&gt; in Nachricht &lt;<a rel=3D"nofollow">07b30064-72b3-42c1...@googleg=
roups.com</a>&gt;:
<br>&gt;&gt; I have an interesting question to ask:
<br>&gt;&gt;=20
<br>&gt;&gt; Is it possible to share the target on the same server as a ini=
tiator ?
<br>&gt;&gt; e.g. server1: target -&gt; server1: initiator=20
<br>
<br>Yes, I&#39;ve used that in a test setup when I needed to put a file sys=
tem on iSCSI (to test pNFS).
<br>
<br>	paul
<br>
<br></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/303b57a8-5d06-44ef-9212-ee350ea6bd1fn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/303b57a8-5d06-44ef-9212-ee350ea6bd1fn%40googlegroups.com</a>.=
<br />

------=_Part_1285_1817041964.1625153835150--

------=_Part_1284_696438124.1625153835150--
