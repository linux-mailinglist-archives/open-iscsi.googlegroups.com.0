Return-Path: <open-iscsi+bncBC755V5RXMKBBJXW7T2AKGQE24RDOHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E21511B2F14
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 20:27:51 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id d15sf15010337qkl.10
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 11:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dHY9JracU6jyueBYwzWD5prOwEfmDDD7dZ0I6WjetJ4=;
        b=oJXlEyCCKI9ycul86j+vcymRsP7LrUG5yNUjNVNSVz/TREZXCatxcaRWV8htyzk6oI
         UcSUIOUcOs9/FEPRxbvLIULtVqx1yBqsINqwYAJMVlBgFH2qwbISG+e37+mkKUk5QU5u
         uwTQhZNuQG0UP0vCphaGHUujJeQQEKg/iANVNiKjMkbfUkJhKX/fSTSEsjwaCwnFuPAK
         fqor2mEDaDiIwfBspyo1RTAw2C1CBnGy8kILGRwE3ijlxzDeTScC0wdPp58upqkDtt0n
         IOLxfFiM/AiBf1CvGrrCmddXU3m51i7jSgV1YsPLkXvR36XC/W4Ly180jbrESR2i4YHP
         0gKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dHY9JracU6jyueBYwzWD5prOwEfmDDD7dZ0I6WjetJ4=;
        b=GM52u4gvvVf3PzSvsi9x0RbSCN7NRj4a5s5c5u4vbeeAq8u13DpPrq5xVjaiMVFRT5
         UCPMd88v6VGtQPjPehlk/tNMSx0gVuE3YgOgQm3D5HbdQTPhWoRv9XGujiEWW8PLpioW
         0pBO/ucCwUQrGp6RX8SHqP0FsPDOPQNOuk2By/LfzSbk2Q7EHtdWPBQ/NYBXyXqAf7g7
         dav3Q8wspZOcGELXegDWkTrpj4xhZndUn4lF/vmCusVfEYr789sc8Li7ZSKLPc0ORhWF
         tzS5OlhukQioHJS95d3WO3427Tf5mrfGDq1va/j9Msal5Upv5tp31Plctg5cd5bs3UHB
         rtlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dHY9JracU6jyueBYwzWD5prOwEfmDDD7dZ0I6WjetJ4=;
        b=ayozP6fjoBR0KOQuR997uKpvRrHTsDxYtJjlC7mHe3mU6X/Ya/CUbObVEiDcZxGsFG
         0rnZuJfnpxGp5TeFQ/vVdatbp5G1/b/Vvstg+4TDKG0Be64lfAWVV4kFaRq3HBG7Lql3
         syiZZ1rqRELfXClUyZCjmC1DYfWOL/sCFs5a/KsWWarGGXUpfnZdIpUrHL5KvD1vzDjt
         fnIo0HlK5JhcZhmR/w+KyQSlhpzM/5dv2I2UH7r28sUw7H3C1rFOAoI/6uFV3c4Otyo2
         +GsepXsKd4+0R8oaYGdabGBChtKNIEVvjNYi182IORH6lufYcA1FqOb7cqj6FvRy3aZV
         y3gw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYHk+Lmx4DUGLMMWQsn+3ArtFSbHkHCbySC4wxy9gkyIcgvCDCO
	soT2RSwquDBLEVwh05IYDxA=
X-Google-Smtp-Source: APiQypJmmqj3egMMz8/XeZ9QWRXGb+sOPAIFneEuUlRPW1hKxHlk9rAYhk5xp183ETasaDElXKtuGA==
X-Received: by 2002:a0c:a9c2:: with SMTP id c2mr8569928qvb.23.1587493670894;
        Tue, 21 Apr 2020 11:27:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:6491:: with SMTP id y139ls9865730qkb.0.gmail; Tue, 21
 Apr 2020 11:27:50 -0700 (PDT)
X-Received: by 2002:a37:58c3:: with SMTP id m186mr23649781qkb.30.1587493670401;
        Tue, 21 Apr 2020 11:27:50 -0700 (PDT)
Date: Tue, 21 Apr 2020 11:27:49 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <ef8b7483-b1fc-46b5-abee-10d0bd6f9d0c@googlegroups.com>
In-Reply-To: <5E9D90BD020000A100038651@gwsmtp.uni-regensburg.de>
References: <6355_1587114536_5E997228_6355_294_1_d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
 <5E9D90BD020000A100038651@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] [PATCH] open-iscsi:Modify iSCSI shared memory permissions
 for logs
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2547_357964202.1587493669733"
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

------=_Part_2547_357964202.1587493669733
Content-Type: multipart/alternative; 
	boundary="----=_Part_2548_1714290517.1587493669733"

------=_Part_2548_1714290517.1587493669733
Content-Type: text/plain; charset="UTF-8"

On Monday, April 20, 2020 at 5:08:36 AM UTC-7, Uli wrote:
>
> Hi! 
>
> Maybe this could be made a symbolic constant, or even be made 
> configurable. 
> The other interesting thing is that there are three seemingly very similar 
> code fragements to create the shared memory, but each with a different size 
> parameter (sizeof(struct logarea) vs. size vs. MAX_MSG_SIZE + sizeof(struct 
>  logmsg)) ;-) 
>

If you'd like to submit a pull request, I'll consider it. I don't think the 
symbolic constant and machinery around making the permission configurable 
are worth the trouble, since they shouldn't be changed. But I could saying 
making this permission a define in an include file, perhaps with an 
"ifndef" around it. :)

As far as automating the shared memory creation for just 3 cases is not 
worth it, particularly since we're filling in info about the 2nd and 3rd 
segment into our control structure, as we go.

I merge this pull request.

>
> Regards, 
> Ulrich 
>
> >>> Wu Bo <wubo40@huawei.com> schrieb am 17.04.2020 um 11:08 in Nachricht 
> <6355_1587114536_5E997228_6355_294_1_d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei 
>
> com>: 
> > Hi, 
> > 
> > Iscsid log damon is responsible for reading data from shared memory 
> > and writing syslog. Iscsid is the root user group. 
> > Currently, it is not seen that non-root users need to read logs. 
> > The principle of minimizing the use of permissions, all the permissions 
> > are changed from 644 to 600. 
> > 
> > Signed-off-by: Wu Bo <wubo40@huawei.com> 
> > --- 
> >   usr/log.c | 6 +++--- 
> >   1 file changed, 3 insertions(+), 3 deletions(-) 
> > 
> > diff --git a/usr/log.c b/usr/log.c 
> > index 6e16e7c..2fc1850 100644 
> > --- a/usr/log.c 
> > +++ b/usr/log.c 
> > @@ -73,7 +73,7 @@ static int logarea_init (int size) 
> >          logdbg(stderr,"enter logarea_init\n"); 
> > 
> >          if ((shmid = shmget(IPC_PRIVATE, sizeof(struct logarea), 
> > -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) { 
> > +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) { 
> >                  syslog(LOG_ERR, "shmget logarea failed %d", errno); 
> >                  return 1; 
> >          } 
> > @@ -93,7 +93,7 @@ static int logarea_init (int size) 
> >                  size = DEFAULT_AREA_SIZE; 
> > 
> >          if ((shmid = shmget(IPC_PRIVATE, size, 
> > -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) { 
> > +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) { 
> >                  syslog(LOG_ERR, "shmget msg failed %d", errno); 
> >                  free_logarea(); 
> >                  return 1; 
> > @@ -114,7 +114,7 @@ static int logarea_init (int size) 
> >          la->tail = la->start; 
> > 
> >          if ((shmid = shmget(IPC_PRIVATE, MAX_MSG_SIZE + sizeof(struct 
> > logmsg), 
> > -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) { 
> > +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) { 
> >                  syslog(LOG_ERR, "shmget logmsg failed %d", errno); 
> >                  free_logarea(); 
> >                  return 1; 
> > -- 
> > 1.8.3.1 
> > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "open-iscsi" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to open-iscsi+unsubscribe@googlegroups.com. 
> > To view this discussion on the web visit 
> > 
> https://groups.google.com/d/msgid/open-iscsi/d6a22a2f-3730-45ee-5256-8a8fe4b0 
> > 17bf%40huawei.com. 
>
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ef8b7483-b1fc-46b5-abee-10d0bd6f9d0c%40googlegroups.com.

------=_Part_2548_1714290517.1587493669733
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Monday, April 20, 2020 at 5:08:36 AM UTC-7, Uli wrote:<=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;">Hi!
<br>
<br>Maybe this could be made a symbolic constant, or even be made configura=
ble.
<br>The other interesting thing is that there are three seemingly very simi=
lar code fragements to create the shared memory, but each with a different =
size parameter (sizeof(struct logarea) vs. size vs. MAX_MSG_SIZE + sizeof(s=
truct =C2=A0logmsg)) ;-)
<br></blockquote><div><br></div><div>If you&#39;d like to submit a pull req=
uest, I&#39;ll consider it. I don&#39;t think the symbolic constant and mac=
hinery around making the permission configurable are worth the trouble, sin=
ce they shouldn&#39;t be changed. But I could saying making this permission=
 a define in an include file, perhaps with an &quot;ifndef&quot; around it.=
 :)</div><div><br></div><div>As far as automating the shared memory creatio=
n for just 3 cases is not worth it, particularly since we&#39;re filling in=
 info about the 2nd and 3rd segment into our control structure, as we go.</=
div><div><br></div><div>I merge this pull request.<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #=
ccc solid;padding-left: 1ex;">
<br>Regards,
<br>Ulrich
<br>
<br>&gt;&gt;&gt; Wu Bo &lt;<a href=3D"mailto:wubo40@huawei.com" target=3D"_=
blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:wubo40@huawe=
i.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:wubo40@huawei.c=
om&#39;;return true;">wubo40@huawei.com</a>&gt; schrieb am 17.04.2020 um 11=
:08 in Nachricht
<br>&lt;6355_1587114536_5E997228_<wbr>6355_294_1_d6a22a2f-3730-45ee-<wbr>52=
56-8a8fe4b017bf@huawei
<br>com&gt;:
<br>&gt; Hi,
<br>&gt;=20
<br>&gt; Iscsid log damon is responsible for reading data from shared memor=
y
<br>&gt; and writing syslog. Iscsid is the root user group.
<br>&gt; Currently, it is not seen that non-root users need to read logs.
<br>&gt; The principle of minimizing the use of permissions, all the permis=
sions=20
<br>&gt; are changed from 644 to 600.
<br>&gt;=20
<br>&gt; Signed-off-by: Wu Bo &lt;<a href=3D"mailto:wubo40@huawei.com" targ=
et=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:wubo4=
0@huawei.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:wubo40@h=
uawei.com&#39;;return true;">wubo40@huawei.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0 usr/log.c | 6 +++---
<br>&gt; =C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/usr/log.c b/usr/log.c
<br>&gt; index 6e16e7c..2fc1850 100644
<br>&gt; --- a/usr/log.c
<br>&gt; +++ b/usr/log.c
<br>&gt; @@ -73,7 +73,7 @@ static int logarea_init (int size)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logdbg(stderr,&quot;enter logare=
a_init\n&quot;);
<br>&gt;=20
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVAT=
E, sizeof(struct logarea),
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysl=
og(LOG_ERR, &quot;shmget logarea failed %d&quot;, errno);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retu=
rn 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
<br>&gt; @@ -93,7 +93,7 @@ static int logarea_init (int size)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size=
 =3D DEFAULT_AREA_SIZE;
<br>&gt;=20
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVAT=
E, size,
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysl=
og(LOG_ERR, &quot;shmget msg failed %d&quot;, errno);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free=
_logarea();
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retu=
rn 1;
<br>&gt; @@ -114,7 +114,7 @@ static int logarea_init (int size)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0la-&gt;tail =3D la-&gt;start;
<br>&gt;=20
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVAT=
E, MAX_MSG_SIZE + sizeof(struct=20
<br>&gt; logmsg),
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysl=
og(LOG_ERR, &quot;shmget logmsg failed %d&quot;, errno);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free=
_logarea();
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retu=
rn 1;
<br>&gt; --
<br>&gt; 1.8.3.1
<br>&gt;=20
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups=20
<br>&gt; &quot;open-iscsi&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an=20
<br>&gt; email to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.c=
om" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mail=
to:open-iscsi%2Bunsubscribe@googlegroups.com&#39;;return true;" onclick=3D"=
this.href=3D&#39;mailto:open-iscsi%2Bunsubscribe@googlegroups.com&#39;;retu=
rn true;">open-iscsi+unsubscribe@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit=20
<br>&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/d6a22a2f-3=
730-45ee-5256-8a8fe4b0" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"t=
his.href=3D&#39;https://groups.google.com/d/msgid/open-iscsi/d6a22a2f-3730-=
45ee-5256-8a8fe4b0&#39;;return true;" onclick=3D"this.href=3D&#39;https://g=
roups.google.com/d/msgid/open-iscsi/d6a22a2f-3730-45ee-5256-8a8fe4b0&#39;;r=
eturn true;">https://groups.google.com/d/<wbr>msgid/open-iscsi/d6a22a2f-<wb=
r>3730-45ee-5256-8a8fe4b0</a>=20
<br>&gt; 17bf%<a href=3D"http://40huawei.com" target=3D"_blank" rel=3D"nofo=
llow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3=
A%2F%2F40huawei.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHoFvUpSf80aEQnP=
_H5sdMX2P3IwA&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2F40huawei.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x=
3dAFQjCNHoFvUpSf80aEQnP_H5sdMX2P3IwA&#39;;return true;">40huawei.com</a>.
<br>
<br>
<br>
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ef8b7483-b1fc-46b5-abee-10d0bd6f9d0c%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/ef8b7483-b1fc-46b5-abee-10d0bd6f9d0c%40googlegroups.com</a>.<b=
r />

------=_Part_2548_1714290517.1587493669733--

------=_Part_2547_357964202.1587493669733--
