Return-Path: <open-iscsi+bncBDWOZE472MPRB2UWUSEQMGQETUCS2NI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F17CE3F9C09
	for <lists+open-iscsi@lfdr.de>; Fri, 27 Aug 2021 17:57:41 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id g10-20020ad4510a000000b00374e412478fsf640047qvp.18
        for <lists+open-iscsi@lfdr.de>; Fri, 27 Aug 2021 08:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+/moVDvM+hMZFhRLCB186cHnz9lb1B4KCMZfcTrYyoI=;
        b=cmXOyIUQYejiRZwgF+LM1T30uwB5Cs6kK1WXuJUOjtQd+vLO5I8w2o5yBUkwFFQozM
         o1JaAwGj9JNba2xkhxqhpkDeV3tDnugMesq47qik+xLJTAuqoxNITYmsuce5gOYAdvqp
         c1SbU8eCvk+/Ol6iNGxS9g+Hnwz2NGQNfiruKzAWnYKE8TcIIkq/4cWLYt78FXc1dGKA
         I9o+8+tX9J2hy9LHG5AKGijuPOPFR6hUp23c0ah6TuEVBjOOpmg7f1zrd/pWOJzffC3e
         ibqMgC38Gw1Rseip2fqSzLt5Mk6N2kzqZlXrJV1g0JwBwhVE6FAbfhj7RELt9SXQ3Sek
         82Sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+/moVDvM+hMZFhRLCB186cHnz9lb1B4KCMZfcTrYyoI=;
        b=TOcv4TqW/cGnT5FLZH9xRzrzw6GUKM6kns2NXCGUej2ZItRlw+9zuztIDm1YZv2f9i
         RsZP+JFcJTynDQhvrWBTpEj0jw9tmcR1bOT8/eLJyRufeTS23X42DWj7anV90Z5RvPJS
         I9lb/DP/HxXSZUhShrqc5q4W1wdm9oP1DtHwTO26X1oGOg699MkzPzna4FMaDesfXVuk
         ywcoXm1CgGBIKGYQ/o1XOhx1M3EckzPEuF0CuWa2h0h1Bb2HAqDrRGp7muAt9fz1GP6R
         6g0a5LxvrSzv5Gn/KnpZ3fsni+EWGSwL0kkkBPpqK1H2lzp3lzYQZbjW54HIuB/IZa8Y
         hgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+/moVDvM+hMZFhRLCB186cHnz9lb1B4KCMZfcTrYyoI=;
        b=BhLhgOHvKBMUi4t+QagUNGao5q/EHBNtP6/R9TzWKBz+fuSLiNqqW/++X2p/6V9Ju/
         KJPxOaeRHFT9dKLSHGlacGY4ztAwuoGvlUtD9j5EEz63nNDXv7meBa1Ump8DE8mmGIn4
         0gmbNZuNxDXgdOxjA5OaJCsPlA43TLRJuAtyvtezVxaV+JydjX227b9tWBj6dYcDNtkw
         B4/5/+xmGVuox4Z/sHpgAdfImUGtyUSgN1FUWrIZGOY9EU4cmA3y3f69v8DMdUjLAX+m
         EREprErkg1GqZOuUPI5JjEp4I5HV3GLA+aR+aCHlYM92ukYZdlx0x75+3PYNL/PzmVJL
         fV7g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530QIetBBgq8WpBMcuAjpQSUp2wHv9+KIi5fiWk3JMJ0fuJ0tILv
	8lbNQ1DdYyXkaBLaKA9UyAI=
X-Google-Smtp-Source: ABdhPJzBt/SJJ+qrhE1R/g4YcKeB6MbQ/dk2YrLXjdyfD+reLkRRCzSouJVj/om9G4giUp/EToj1qA==
X-Received: by 2002:a05:622a:104c:: with SMTP id f12mr8772375qte.339.1630079850806;
        Fri, 27 Aug 2021 08:57:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:2a05:: with SMTP id o5ls5585148qkp.8.gmail; Fri, 27
 Aug 2021 08:57:30 -0700 (PDT)
X-Received: by 2002:a05:620a:52b:: with SMTP id h11mr9836295qkh.181.1630079850268;
        Fri, 27 Aug 2021 08:57:30 -0700 (PDT)
Date: Fri, 27 Aug 2021 08:57:29 -0700 (PDT)
From: Fernando Perfumo <fp2031@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4350d6cd-aa08-4aa2-aede-5134f7242927n@googlegroups.com>
In-Reply-To: <612887D5020000A100043866@gwsmtp.uni-regensburg.de>
References: <a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n@googlegroups.com>
 <612887D5020000A100043866@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] linux iscsi target setup for IP camera
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4378_819959705.1630079849671"
X-Original-Sender: fp2031@gmail.com
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

------=_Part_4378_819959705.1630079849671
Content-Type: multipart/alternative; 
	boundary="----=_Part_4379_533152652.1630079849671"

------=_Part_4379_533152652.1630079849671
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ulrich, thanks for answering.=20
The windows iSCSI server we had is now a dead machine. I can't get at this=
=20
moment any TCP interchange with it, so I'm exploring other more standard=20
solution for video recording.=20

The camera is unable to get the iSCSI LUN list from the debian server. This=
=20
fact was what induced me to look closer into the TCP headers, but today=20
I've found --despite of the 'X-com.bosch*=3DNotUnderstood' extra=20
parameters,-- that by means of suppling to the c=C3=A1mera the iSCSI server=
 IP=20
address and LUN , the camera begins to work with the assigned iSCSI  as a=
=20
block device,   using it for data recording. =20

It is enough for me by now,  as it opens a new front to investigate: the=20
saved data is somewat like a circular list of blocks (files) I need to find=
=20
my way of conveting it to an useable video format, but this is not a=20
suitable question for this group.

Thanks again Ulrich!


 =20




=20
  =20


 =20

El viernes, 27 de agosto de 2021 a las 8:36:11 UTC+2, Uli escribi=C3=B3:

> I think at the very least you'll have to provide some details (like logs=
=20
> from Linux, and maybe some details from Windows where it is said to work)=
.
> Or a technical specification of the camera at least.
>
> Regards,
> Ulrich
>
> >>> Fernando Perfumo <fp2...@gmail.com> schrieb am 26.08.2021 um 16:44 in=
=20
> Nachricht
> <a410c8bc-f3d7-4d6a...@googlegroups.com>:
>
> > I'm trying to set up iscsi target on Debian 11 for recording video from=
=20
> > Bosch ip cameras.
> >=20
> > I can connect to the target from windows, but not from the cameras.
> >=20
> > tcpdump shows in the negotiation's packets the presence of "X-"=20
> parameters=20
> > on the camera TCP packets.
> > I've seen in the iscsi RFC these extra parameters are optional.
> >=20
> > Does somebody knows if the existence of "X-" parameters can break the=
=20
> > negotiation of targets and luns on iscsi linux implemetations?
> >=20
> > There is no more references to X- and X# parameters on internet except=
=20
> on=20
> > the original iscsi RFC, else I would have found some.=20
> >=20
> > I want to modify the iscsi sources to allow admins to test and supply=
=20
> > convenient responses to 'X-com.whatever' maker's parameters, and I woul=
d=20
> > appreciate your suggestions.
> >=20
> > I've heard these ip cameras work too with microsoft's iscsi -non bosch=
=20
> > altered- target implementations, so it may be only matter of supplying=
=20
> > convenient responses to X- parameters.
> >=20
> > Thanks
> >=20
> >=20
> >=20
> >=20
> >=20
> >=20
> >=20
> >=20
> >=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups=20
> > "open-iscsi" group.
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an=20
> > email to open-iscsi+...@googlegroups.com.
> > To view this discussion on the web visit=20
> >=20
> https://groups.google.com/d/msgid/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8db=
dcd6=20
> > 2d41n%40googlegroups.com.
>
>
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/4350d6cd-aa08-4aa2-aede-5134f7242927n%40googlegroups.com.

------=_Part_4379_533152652.1630079849671
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ulrich, thanks for answering.&nbsp;<div>The windows iSCSI server we h=
ad is now a dead machine. I can't get at this moment any TCP interchange wi=
th it, so I'm exploring other more standard solution for video recording.&n=
bsp;</div><div><br></div><div>The camera is unable to get the iSCSI LUN lis=
t from the debian server. This fact was what induced me to look closer into=
 the TCP headers, but today I've found --despite of the 'X-com.bosch*=3DNot=
Understood' extra parameters,-- that by means of suppling to the c=C3=A1mer=
a the iSCSI server IP address and LUN , the camera begins to work with the =
assigned iSCSI&nbsp; as a block device,&nbsp; &nbsp;using it for data recor=
ding.&nbsp;&nbsp;</div><div><br></div><div>It is enough for me by now,&nbsp=
; as it opens a new front to investigate: the saved data is somewat like a =
circular list of blocks (files) I need to find my way of conveting it to an=
 useable video format, but this is not a suitable question for this group.<=
/div><div><br></div><div>Thanks again Ulrich!</div><div><br></div><div><br>=
</div><div>&nbsp;&nbsp;</div><div><br></div><div><br></div><div><br></div><=
div><div><br></div></div><div>&nbsp;</div><div>&nbsp; &nbsp;</div><div><br>=
</div><div><br></div><div>&nbsp;&nbsp;<br><br></div><div class=3D"gmail_quo=
te"><div dir=3D"auto" class=3D"gmail_attr">El viernes, 27 de agosto de 2021=
 a las 8:36:11 UTC+2, Uli escribi=C3=B3:<br/></div><blockquote class=3D"gma=
il_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204=
, 204); padding-left: 1ex;">I think at the very least you&#39;ll have to pr=
ovide some details (like logs from Linux, and maybe some details from Windo=
ws where it is said to work).
<br>Or a technical specification of the camera at least.
<br>
<br>Regards,
<br>Ulrich
<br>
<br>&gt;&gt;&gt; Fernando Perfumo &lt;<a href data-email-masked rel=3D"nofo=
llow">fp2...@gmail.com</a>&gt; schrieb am 26.08.2021 um 16:44 in Nachricht
<br>&lt;<a href data-email-masked rel=3D"nofollow">a410c8bc-f3d7-4d6a...@go=
oglegroups.com</a>&gt;:
<br>
<br>&gt; I&#39;m trying to set up iscsi target on Debian 11 for recording v=
ideo from=20
<br>&gt; Bosch ip cameras.
<br>&gt;=20
<br>&gt; I can connect to the target from windows, but not from the cameras=
.
<br>&gt;=20
<br>&gt; tcpdump shows in the negotiation&#39;s packets the presence of &qu=
ot;X-&quot; parameters=20
<br>&gt; on the camera TCP packets.
<br>&gt; I&#39;ve seen in the iscsi RFC these extra parameters are optional=
.
<br>&gt;=20
<br>&gt; Does somebody knows if the existence of &quot;X-&quot; parameters =
can break the=20
<br>&gt; negotiation of targets and luns on iscsi linux implemetations?
<br>&gt;=20
<br>&gt; There is no more references to X- and X# parameters on internet ex=
cept on=20
<br>&gt; the original iscsi RFC, else I would have found some.=20
<br>&gt;=20
<br>&gt; I want to modify the iscsi sources to allow admins to test and sup=
ply=20
<br>&gt; convenient responses to &#39;X-com.whatever&#39; maker&#39;s param=
eters, and I would=20
<br>&gt; appreciate your suggestions.
<br>&gt;=20
<br>&gt; I&#39;ve heard these ip cameras work too with microsoft&#39;s iscs=
i -non bosch=20
<br>&gt; altered- target implementations, so it may be only matter of suppl=
ying=20
<br>&gt; convenient responses to X- parameters.
<br>&gt;=20
<br>&gt; Thanks
<br>&gt;=20
<br>&gt;=20
<br>&gt;=20
<br>&gt;=20
<br>&gt;=20
<br>&gt;=20
<br>&gt;=20
<br>&gt;  =20
<br>&gt;=20
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups=20
<br>&gt; &quot;open-iscsi&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an=20
<br>&gt; email to <a href data-email-masked rel=3D"nofollow">open-iscsi+...=
@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit=20
<br>&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/a410c8bc-f=
3d7-4d6a-a6d5-f8dbdcd6" target=3D"_blank" rel=3D"nofollow" data-saferedirec=
turl=3D"https://www.google.com/url?hl=3Des&amp;q=3Dhttps://groups.google.co=
m/d/msgid/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8dbdcd6&amp;source=3Dgmail&am=
p;ust=3D1630162688577000&amp;usg=3DAFQjCNHjaeaNu84v-kfI0iNfNoJUDy5_Fw">http=
s://groups.google.com/d/msgid/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8dbdcd6</=
a>=20
<br>&gt; 2d41n%<a href=3D"http://40googlegroups.com" target=3D"_blank" rel=
=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Des&am=
p;q=3Dhttp://40googlegroups.com&amp;source=3Dgmail&amp;ust=3D16301626885770=
00&amp;usg=3DAFQjCNGN38zCcUnB4eKnheGTJ9BBu_K8yQ">40googlegroups.com</a>.
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
om/d/msgid/open-iscsi/4350d6cd-aa08-4aa2-aede-5134f7242927n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/4350d6cd-aa08-4aa2-aede-5134f7242927n%40googlegroups.com</a>.=
<br />

------=_Part_4379_533152652.1630079849671--

------=_Part_4378_819959705.1630079849671--
