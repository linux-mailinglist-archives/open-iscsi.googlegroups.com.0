Return-Path: <open-iscsi+bncBC24JGEJRMKRBFXLTTYQKGQEROLB6FA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0291D144348
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Jan 2020 18:32:08 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id a6sf2222967qkl.7
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Jan 2020 09:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qKUTSLydteqZSGTkaynbeSxu7FfVnb2DyV+MFNA21eI=;
        b=Ixvt8svkhXg8Senuq0TMvH4SkJwj7r6njCqm2WXcGs0dm2mnJTnddPanHlysLHS0vn
         q8mNeIL65Yo1Nx099AR0bNyBCfWH9mcda7rT//FP4j0C+LKPBLxAP+DjtuUtUgS+eLyl
         sND/OIRW2gVM8AVJT3maipVaAAOyB3j5LK8xb11Ae62mQtbcZsyLEfkgM6SYEdz8P9Vg
         ApuEOXuh1nPgnPpFCtODLfgDUgCaJbaZj3tdC92zdmaOqejIEqsqi7O55tv2KIbnIjZb
         UJQNuvbTisMfpurFA7EJ/Ey6Y48gjKYOctPl8jkTxbGgYn5vglVWAL6cZ3h6r9wtVm+m
         eHQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKUTSLydteqZSGTkaynbeSxu7FfVnb2DyV+MFNA21eI=;
        b=GR1rs0pHvj10e2HS98oWYOiiq8ATrsEFOQgC+OpQzWX0MQVHSvhiOproRo8XEjIV9m
         gi+9rAXj9iSnvVLI80gznZ30LgqQ92/jvVSMjvpURa7KCeGLuYBMVbHWLxcXopA4Ggwa
         ae8lKWdkJPbxQ6VsDejvuqyi61InrtUyYdvyl7NIUGLd86cOf7mfqYUCltGAjn89tC9G
         yPYY7b00q5/NhauMZkq/k5vLRrUJU4TAr154HZv6hIGw3Hm3nlc5HJ2A4kEjaMwrP/lJ
         V2ujdA0ImYgs2cDOzsxejjV60bU6khRaFp/vPpMLn81sgr27aF2dqxcIVdjpg8dUYBBz
         MAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKUTSLydteqZSGTkaynbeSxu7FfVnb2DyV+MFNA21eI=;
        b=hSfx8JfvbcSGDXc1I7iMSJw6a6k8CXgLr+P++kv+F0YJ2eDIDD5+U3oxrmyhsjwS4f
         6M7Vr5FBOnboWTy26yLBG7HYu49nsZrxd47YiBTVCAeUXsd3moVJlAPeIvgImhW8ZysQ
         tsO7CLjxZd4bUyZ87vuXvR2Two8Jo7w1fOVwv19pVavKF5bPJAi7/USHZ+BGUojE0uYV
         vfAzCT/xWJ8isdPbXN6xk4oJqWs3JSK10oFt363G4yBknvo4MXTXM7dfj1dv9cGDP+Pv
         faI1HSYaY+VPkaQAliC8QFDlqiThhsIgHTD3ED9k5mssDbVbSEW4I5y6AaKiYKWxeZ5a
         EopA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXcumpQWiUpiU4DDjMWaze2o+PKmiAktctYkWmLPqaDsr33G6d/
	7wXgbboeplgwrg5BwRsyjaE=
X-Google-Smtp-Source: APXvYqwjq0VjRlMkPT4Gfl6n3IL9TeUpJEp3eXhSgJsYObkbazMRIGVt++TtfDRXKG28bpc18jACmw==
X-Received: by 2002:ad4:4389:: with SMTP id s9mr5716312qvr.99.1579627926978;
        Tue, 21 Jan 2020 09:32:06 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e017:: with SMTP id m23ls905735qkk.16.gmail; Tue, 21 Jan
 2020 09:32:06 -0800 (PST)
X-Received: by 2002:a05:620a:20c7:: with SMTP id f7mr5660551qka.440.1579627926429;
        Tue, 21 Jan 2020 09:32:06 -0800 (PST)
Date: Tue, 21 Jan 2020 09:32:05 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a3b2b411-3138-43e4-aeaa-be026c70a95d@googlegroups.com>
In-Reply-To: <20160601222727.wgg6z6htzuyona5r@straylight.hirudinean.org>
References: <e7d9aa83-977e-474c-9ca1-9448a962fe0d@googlegroups.com>
 <20160520231855.xxtk57nudcyy4xpb@straylight.hirudinean.org>
 <CAM89p6_AV2TFS7Aiak6bQFLZ+4qGL+qmt4udBjN2JpDs4eQORg@mail.gmail.com>
 <20160601222727.wgg6z6htzuyona5r@straylight.hirudinean.org>
Subject: Re: Question: Where are scsi commands encapsulated?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1889_1521287826.1579627925806"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_1889_1521287826.1579627925806
Content-Type: multipart/alternative; 
	boundary="----=_Part_1890_2112131601.1579627925807"

------=_Part_1890_2112131601.1579627925807
Content-Type: text/plain; charset="UTF-8"

Hi Chris,

very good explanation. Can you also please tell where does scsi-mq 
(multi-queue) comes into play in this flow? Where exactly one can see 
multi-queue in the code?

Thanks !

On Thursday, June 2, 2016 at 12:27:32 AM UTC+2, Chris Leech wrote:
>
> On Fri, May 20, 2016 at 06:33:25PM -0500, hao wen wrote: 
> > Hi Chris, 
> > 
> > Thank you for you reply. 
> > Just to be specific, can I get the scsi commands and try to do some 
> process 
> > on it in function like iscsi_data_xmit*(struct* iscsi_conn ***conn*) 
> *before 
> > the scsi commands are finally transmitted to the iscsi target? 
>
> Look at the .queuecommand field in the scsi_host_template used by your 
> driver, it will point to the top level function that takes commands from 
> the SCSI midlayer to send to the target. 
>
> For iscsi_tcp, that's iscsi_queuecommand.  You can follow the calls down 
> from there, but that's the interface where SCSI transports take 
> commands. 
>
> - Chris 
>
> > 2016-05-20 18:18 GMT-05:00 Chris Leech <cle...@redhat.com <javascript:>>: 
>
> > 
> > > On Mon, May 09, 2016 at 08:32:54AM -0700, whls...@gmail.com 
> <javascript:> wrote: 
> > > > Hi, 
> > > > 
> > > > I am recently looking into the process of iSCSI initiator. I wonder 
> where 
> > > > the source codes are that receive the scsi commands and encapsulate 
> them 
> > > > into iscsi format. I have walked through the interaction between 
> iscsiadm 
> > > > and iscsid, but I did find that. I thought it may be written in 
> qtask 
> > > > structure, but it seems the payload_len is never set within the 
> code. 
> > > > 
> > > > Could anyone help answer this question? 
> > > 
> > > The userspace tools only handle iSCSI session management tasks.  The 
> > > SCSI command handling is done in the Linux kernel drivers, which 
> > > interact with the kernel SCSI subsystem. 
> > > 
> > > - Chris 
> > > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "open-iscsi" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to open-...@googlegroups.com <javascript:>. 
> > To post to this group, send email to open-...@googlegroups.com 
> <javascript:>. 
> > Visit this group at https://groups.google.com/group/open-iscsi. 
> > For more options, visit https://groups.google.com/d/optout. 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a3b2b411-3138-43e4-aeaa-be026c70a95d%40googlegroups.com.

------=_Part_1890_2112131601.1579627925807
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Chris,<br><br>very good explanation. Can you also pleas=
e tell where does scsi-mq (multi-queue) comes into play in this flow? Where=
 exactly one can see multi-queue in the code?<div><br></div><div>Thanks !<b=
r><br>On Thursday, June 2, 2016 at 12:27:32 AM UTC+2, Chris Leech wrote:<bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border=
-left: 1px #ccc solid;padding-left: 1ex;">On Fri, May 20, 2016 at 06:33:25P=
M -0500, hao wen wrote:
<br>&gt; Hi Chris,
<br>&gt;=20
<br>&gt; Thank you for you reply.
<br>&gt; Just to be specific, can I get the scsi commands and try to do som=
e process
<br>&gt; on it in function like iscsi_data_xmit*(struct* iscsi_conn ***conn=
*) *before
<br>&gt; the scsi commands are finally transmitted to the iscsi target?
<br>
<br>Look at the .queuecommand field in the scsi_host_template used by your
<br>driver, it will point to the top level function that takes commands fro=
m
<br>the SCSI midlayer to send to the target.
<br>
<br>For iscsi_tcp, that&#39;s iscsi_queuecommand. =C2=A0You can follow the =
calls down
<br>from there, but that&#39;s the interface where SCSI transports take
<br>commands.
<br>
<br>- Chris
<br>
<br>&gt; 2016-05-20 18:18 GMT-05:00 Chris Leech &lt;<a href=3D"javascript:"=
 target=3D"_blank" gdf-obfuscated-mailto=3D"w4qIpL-EAwAJ" rel=3D"nofollow" =
onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"t=
his.href=3D&#39;javascript:&#39;;return true;">cle...@redhat.com</a>&gt;:
<br>&gt;=20
<br>&gt; &gt; On Mon, May 09, 2016 at 08:32:54AM -0700, <a href=3D"javascri=
pt:" target=3D"_blank" gdf-obfuscated-mailto=3D"w4qIpL-EAwAJ" rel=3D"nofoll=
ow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=
=3D"this.href=3D&#39;javascript:&#39;;return true;">whls...@gmail.com</a> w=
rote:
<br>&gt; &gt; &gt; Hi,
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; I am recently looking into the process of iSCSI initiato=
r. I wonder where
<br>&gt; &gt; &gt; the source codes are that receive the scsi commands and =
encapsulate them
<br>&gt; &gt; &gt; into iscsi format. I have walked through the interaction=
 between iscsiadm
<br>&gt; &gt; &gt; and iscsid, but I did find that. I thought it may be wri=
tten in qtask
<br>&gt; &gt; &gt; structure, but it seems the payload_len is never set wit=
hin the code.
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; Could anyone help answer this question?
<br>&gt; &gt;
<br>&gt; &gt; The userspace tools only handle iSCSI session management task=
s. =C2=A0The
<br>&gt; &gt; SCSI command handling is done in the Linux kernel drivers, wh=
ich
<br>&gt; &gt; interact with the kernel SCSI subsystem.
<br>&gt; &gt;
<br>&gt; &gt; - Chris
<br>&gt; &gt;
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;open-iscsi&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"w4qIpL-EAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">open-...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w4qIpL-EAwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">open-...@googlegroups.com</a>.
<br>&gt; Visit this group at <a href=3D"https://groups.google.com/group/ope=
n-iscsi" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;https://groups.google.com/group/open-iscsi&#39;;return true;" onclick=3D"t=
his.href=3D&#39;https://groups.google.com/group/open-iscsi&#39;;return true=
;">https://groups.google.com/<wbr>group/open-iscsi</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br></blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a3b2b411-3138-43e4-aeaa-be026c70a95d%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/a3b2b411-3138-43e4-aeaa-be026c70a95d%40googlegroups.com</a>.<b=
r />

------=_Part_1890_2112131601.1579627925807--

------=_Part_1889_1521287826.1579627925806--
