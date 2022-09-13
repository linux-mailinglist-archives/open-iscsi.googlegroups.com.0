Return-Path: <open-iscsi+bncBC755V5RXMKBBYGHQKMQMGQE5G2QRYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB295B7542
	for <lists+open-iscsi@lfdr.de>; Tue, 13 Sep 2022 17:38:11 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id d20-20020a05622a05d400b00344997f0537sf10075217qtb.0
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Sep 2022 08:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date;
        bh=cZbUwtfP9wo/+V9yLhpw40m0gy0liXOh4yxoRPMOPzM=;
        b=DRaSECZ7RravogkUsrFcNCStnEBCSCS+pTkhOJZOra4+h8qg7qAKWsn+YhQ0xe+bmB
         88JB25KT51PcipCaBCHre0XbVvLI6izcM8A24MWHmXprCToAXNPaaIPrXdAvrQSSUChS
         jR1HFlGCYFenITku6MugEVxsjptr3o3bDFVwAehliB4vtrsIyMrBMmBAGQWVFClezhLq
         hM84GqV5pmO0bC1G9josGhYjUUIWUIbr7TvkOeIsWnOMMVe79Ndpsq3j4K9tmsBAORTw
         GrXRU9ir5PQA5rJ0zMVSg9k0YI1KaUsx9SBOpPIDuW65YXsm6SthDZUFbfi5VPY3ZD76
         NWXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date;
        bh=cZbUwtfP9wo/+V9yLhpw40m0gy0liXOh4yxoRPMOPzM=;
        b=dEQV+l9MZPFVcPMQCAoY31zDAfAP4JxNhoEAtpQge6vDrEniYNJ0J2QViQ5MmnXqMm
         weWvWAAYt7cUF5lcCtLmOnvsw0OLSIyE1pvJaD1/QPSK8RqHyrCuHPggaWvkvq2ZVQy9
         xwQZEaqNavJMQu9PkVJWFZmHS0bAGKzbg09+/aksDp5uNxHtanuvr1XKNzFrc0Imk7d+
         IY604kVXFF/VVZvKQQet/eVa9qtzoSR/xufg9cTX8EuOqGj7/bABROyExX21tunusbVp
         6T0eTjlysnB+w7uY1w6w1zknDJZYQ52X9kANKxdjXQiYVZbJ9+FAH6cT0Uhr2iJEHQJ6
         3CMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=cZbUwtfP9wo/+V9yLhpw40m0gy0liXOh4yxoRPMOPzM=;
        b=YgdXoD0mSw9ugLL7A46++1AQKld6yRFW4PHS0ymO8pNxqn5CkipbgCv5pHlELhx5Pm
         lt+jV2fvGWAWQHLRvkDgL5Bx70wiPwFy6b+RbVSZezcvg0oH6c6oR3Ufic48iF+8SNA1
         LQ1f5Gsf/htNbnoeUw7BqdsRS0Igq2KH4gX8nWNsJPW+ODtL9Ti3+WJRDTA/CpCzq7d7
         jVNsXyoiJjkA36v5Tlwmjmrv3QKTPRF0xd5dzcHxjHPKlVOcc7r0QV71osgEb/OIfHg2
         7m4ya5I8sHTefrUrtQfCpdStRa5sRziomkUfsofcFsnow9Ak0OHjrnplUHDSIT3z/KWl
         5YDQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo2/iTo04QVR9qnjSt1pRBdiYoYYnJ50+It9zNATBbxFGVIqeBSd
	0wJWFKoXVA6daffygi6K7Qc=
X-Google-Smtp-Source: AA6agR5KuiDsAKjQ9riyb1UE7B1T2Y/E+AyAY2eHF4t+neh+QjdgRgHMDGxWeIp9n9GdOHTFrYVYiw==
X-Received: by 2002:a05:6214:5284:b0:496:cbbd:c99 with SMTP id kj4-20020a056214528400b00496cbbd0c99mr27951481qvb.89.1663083490108;
        Tue, 13 Sep 2022 08:38:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e317:0:b0:6cd:f96e:7a6b with SMTP id v23-20020ae9e317000000b006cdf96e7a6bls5445816qkf.8.-pod-prod-gmail;
 Tue, 13 Sep 2022 08:38:08 -0700 (PDT)
X-Received: by 2002:a05:620a:2a0d:b0:6b6:6c75:f050 with SMTP id o13-20020a05620a2a0d00b006b66c75f050mr22932395qkp.199.1663083488296;
        Tue, 13 Sep 2022 08:38:08 -0700 (PDT)
Date: Tue, 13 Sep 2022 08:38:07 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e6e0ec92-a48e-4d4d-b460-9b9dd4618846n@googlegroups.com>
In-Reply-To: <caf8c916-df39-444a-ba01-6fc2204bb9den@googlegroups.com>
References: <caf8c916-df39-444a-ba01-6fc2204bb9den@googlegroups.com>
Subject: Re: FCoE target with LIO
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5716_2036738623.1663083487672"
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

------=_Part_5716_2036738623.1663083487672
Content-Type: multipart/alternative; 
	boundary="----=_Part_5717_1224258393.1663083487672"

------=_Part_5717_1224258393.1663083487672
Content-Type: text/plain; charset="UTF-8"

You should perhaps try the target-devel@vger mailing list? This list is 
about the initiator and (mostly) iSCSI.

I don't _believe_ that LIO handles FCoE, but I may be wrong. Good luck.

On Monday, September 5, 2022 at 2:51:23 AM UTC-7 opansz...@gmail.com wrote:

> Hi dear Members.
>
> I want to create a 10G FCoE target with LIO software, the topology is 
> simple.
> I would like to export Luns over fcoe target. 
>
> The fabric will be FCoE.
> Luns are local block devices attached throught SAS raid controller.
> Could someone share any of deploymant guides to this scenario?
>
> I tried deploy this environment to my lab. i used HP server with Intel 
> x520 DA2 converged hba adapter, with no success. 
>
> i found old discussions about target_core, tcm_fc, rtslib.  None of them 
> helped to me.
>
> i will be happy if i could get deployment guide or help from anyone.
> Thanks,
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e6e0ec92-a48e-4d4d-b460-9b9dd4618846n%40googlegroups.com.

------=_Part_5717_1224258393.1663083487672
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>You should perhaps try the target-devel@vger mailing list? This list i=
s about the initiator and (mostly) iSCSI.</div><div><br></div><div>I don't =
_believe_ that LIO handles FCoE, but I may be wrong. Good luck.<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Mond=
ay, September 5, 2022 at 2:51:23 AM UTC-7 opansz...@gmail.com wrote:<br/></=
div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-=
left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Hi dear Members.<di=
v><br></div><div>I want to create a 10G FCoE target with LIO software, the =
topology is simple.<br><div>I would like to export Luns over fcoe target.=
=C2=A0</div><div><br></div><div>The fabric will be FCoE.</div><div>Luns are=
 local block devices attached throught SAS raid controller.</div><div>Could=
 someone share any of deploymant guides to this scenario?</div><div><br></d=
iv><div>I tried deploy this environment to my lab. i used HP server with In=
tel x520 DA2 converged hba adapter, with no success.=C2=A0</div><div><br></=
div><div>i found old discussions about target_core, tcm_fc, rtslib. =C2=A0N=
one of them helped to me.</div><div><br></div><div>i will be happy if i cou=
ld get deployment guide or help from anyone.</div><div>Thanks,</div><div><b=
r></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/e6e0ec92-a48e-4d4d-b460-9b9dd4618846n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/e6e0ec92-a48e-4d4d-b460-9b9dd4618846n%40googlegroups.com</a>.=
<br />

------=_Part_5717_1224258393.1663083487672--

------=_Part_5716_2036738623.1663083487672--
