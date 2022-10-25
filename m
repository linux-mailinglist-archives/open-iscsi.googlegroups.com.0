Return-Path: <open-iscsi+bncBDW3PMPYXYEBBGMRR6NQMGQEICCNE6A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A05617E84
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Nov 2022 14:56:43 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id ew11-20020a05622a514b00b003a524196d31sf1883217qtb.2
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Nov 2022 06:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jHmt8RzzY26EkoWf3kUT2EEoTTIvWfL1EotyIm06MMY=;
        b=mkQp2hwdSZz5ZCTbugs89IKm+HEfOVbHL+oxZ8ADzwnLGkA1YakuumwdezIzayclTE
         +eUMJHh8dxI8SppQythMKChAAWegeq8D5zxZemzg1o7FiNEMXOcI8n6Sz4IHNNXVnK8z
         Y0qscKCFDwES+GGffz7aKCLhbgvCB1JBZ+BPi0fAvU+CmgKPmkYMAQxZuPuSTIDdNa/N
         U47wXKdjEgMEYtg9ZFP7ZXlsFI997EUKtlmu7n5JSZOtn2rNYm3fxW+S8FZbeIslfqQY
         KS1AlbZFvnRSqC+hSD5KG9fsqsTOTlbhxqgHfc5rrK336qFRbSWq6XeqbxZH4SDpkhlJ
         KDRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jHmt8RzzY26EkoWf3kUT2EEoTTIvWfL1EotyIm06MMY=;
        b=h5v1TsfNvGMf9WsEZXjWf2yca/Cs41gARuHqY0jyiSwF4VRyKJ66FQAEWGCx6h61Bs
         +ipmG1k+ov/3Qx0At197z655wEDs2UlYK7PxUktW0snCU0koQO2duhUyDd+SEuqJqJI0
         ODMvC2iUwIXUSk2P+kK7GdTftbcfxaoE3t3XepnpSauaHYfZKolgncveIGjdQ4H6reYs
         pQejZ75V59owW60Tl2o+MRe6qTWSrGnL4vI6SnYIH9ZVQ6hMTKSJ22AT1GP4Ho7ZDweb
         I97WxnTbqiFwCvP6yb/461OVCoyCiAcLwLFoKqwOi5PoP0DRtKevzZjwfBNxvmGWXpDG
         tfzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jHmt8RzzY26EkoWf3kUT2EEoTTIvWfL1EotyIm06MMY=;
        b=vstnzd444cwke5RAN5URdh69QFi0zhLLVnNO66Y0Cxb9Cwiy+7v3gRi9AN3wnMBVT2
         Tff4D49RlBuekRc14da+kK/0Jx+63CySI0Tr0tOlCNRiLgS9cWI3fCxrfuLm2lpBB2Zj
         Q2tObt4fiQ03Y/yZ/Gj2wOFN05ssODOMQNelOEIw/KCJDRF6R2h6E1aNbwTdr0XxLEnR
         7MWHlRf32052A7TCmnxW1ielBVSB3n90o8HOWHYzPMzm36tTMs2TCUkWQ4AtlM2S5/fB
         N5kXvmKL0EM1IwUWBCSokSbeY6qt7CSh/O6GJ6JjhJEjglSKHSIMjSZGbdHW7vYIs6Ik
         PHNA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACrzQf1aI4vsCFM9/pxD/BI8ibpLhC1hChvi4lufbkFFChNOtsozxaP/
	aGMrlp1xJfPgrZmK//CmC1E=
X-Google-Smtp-Source: AMsMyM5Otxz48u5XUpM8Ym+uW8nyzLQnY8p5TGG+rJ1dkjX2DvOIFicq5wjBAU41U0O8aVSEBK0YrA==
X-Received: by 2002:a05:620a:13fa:b0:6fa:15e3:a277 with SMTP id h26-20020a05620a13fa00b006fa15e3a277mr20510281qkl.479.1667483802733;
        Thu, 03 Nov 2022 06:56:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:f503:0:b0:4b1:b8f0:d1a8 with SMTP id j3-20020a0cf503000000b004b1b8f0d1a8ls1154170qvm.10.-pod-prod-gmail;
 Thu, 03 Nov 2022 06:56:41 -0700 (PDT)
X-Received: by 2002:ad4:4eec:0:b0:4af:91b4:c62f with SMTP id dv12-20020ad44eec000000b004af91b4c62fmr26504179qvb.33.1667483801267;
        Thu, 03 Nov 2022 06:56:41 -0700 (PDT)
Received: by 2002:a05:620a:46a5:b0:6cf:33d2:6dcf with SMTP id af79cd13be357-6f8bd371949ms85a;
        Tue, 25 Oct 2022 13:47:29 -0700 (PDT)
X-Received: by 2002:a05:622a:1488:b0:39c:de11:3507 with SMTP id t8-20020a05622a148800b0039cde113507mr33726197qtx.555.1666730848938;
        Tue, 25 Oct 2022 13:47:28 -0700 (PDT)
Date: Tue, 25 Oct 2022 13:47:28 -0700 (PDT)
From: Andinet Gebre <andinetmn@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <6db73c62-ae33-4a75-91d7-dd19117255f4n@googlegroups.com>
Subject: Could not logout of all requested sessions reported error (9 -
 internal error)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_418_1145542660.1666730848764"
X-Original-Sender: andinetmn@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_418_1145542660.1666730848764
Content-Type: multipart/alternative; 
	boundary="----=_Part_419_1989874526.1666730848764"

------=_Part_419_1989874526.1666730848764
Content-Type: text/plain; charset="UTF-8"

 <https://stackoverflow.com/posts/74198294/timeline>

I am able to discover and login into the Target from the iscsi client and 
CHAP is also configured to authenticate to/from the ISCSI Initiator client. 
I am getting the following error when trying logging out from the target to 
check if the CHAP config is working as expected while log back in,

[root@ltolx2020 ~]# iscsiadm --mode node --target 
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14 --portal 
10.85.64.270 --logout Logging out of session [sid: 1, target: 
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14, portal: 
10.85.64.270 ,3260] iscsiadm: Could not logout of [sid: 1, target: 
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14, portal: 
10.85.64.270,3260]. iscsiadm: initiator reported error (9 - internal error) 
iscsiadm: Could not logout of all requested sessions

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6db73c62-ae33-4a75-91d7-dd19117255f4n%40googlegroups.com.

------=_Part_419_1989874526.1666730848764
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable










   =20
        <a href=3D"https://stackoverflow.com/posts/74198294/timeline"></a><=
div><div>

</div>

        </div>

       =20

<div>
   =20
    <div>
               =20
<p>I am able to discover and login into the Target from the iscsi client
 and CHAP is also configured to authenticate to/from the ISCSI =20
Initiator client.
I am getting the following error  when  trying logging out from the=20
target to check if the CHAP config is working as expected while log back
 in,</p>
<p>[root@ltolx2020 ~]# iscsiadm --mode node --target=20
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14=20
--portal 10.85.64.270 --logout
Logging out of session [sid: 1, target:=20
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14,=20
portal: 10.85.64.270 ,3260]
iscsiadm: Could not logout of [sid: 1, target:=20
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14,=20
portal: 10.85.64.270,3260].
iscsiadm: initiator reported error (9 - internal error)
iscsiadm: Could not logout of all requested sessions</p>
    </div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/6db73c62-ae33-4a75-91d7-dd19117255f4n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/6db73c62-ae33-4a75-91d7-dd19117255f4n%40googlegroups.com</a>.=
<br />

------=_Part_419_1989874526.1666730848764--

------=_Part_418_1145542660.1666730848764--
