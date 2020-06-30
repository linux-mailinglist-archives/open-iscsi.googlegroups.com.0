Return-Path: <open-iscsi+bncBCLI32UIRUJRBVXA5X3QKGQEIXKBYXA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D5920FA1A
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 19:03:19 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id u186sf15089750qka.4
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 10:03:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593536598; cv=pass;
        d=google.com; s=arc-20160816;
        b=JmsIN/YH4nsZNMMamAI3ONmF2SLDEqy3myqxa2PzQsrk+4q0iNaxNJNfzrb/rEkXx/
         CBDzrMlYrFAaF+qOrKqH/lsylCh7DwxQ8416CR5MmXDI64CQADgpDnBJozuajt3TDJA4
         41nwlaqdKu1lmkbA0iRl1rnzvlfJ+8guXvuWx7VXpRjGauoPjBz+++OlewRN1mFufLut
         qiYadc7WWMAT+zKsvS4pFHTtQRGNvk12PI0FRe4zIJHQWFofo0pmEYRbYObuOOoBik3+
         kTX0XLodpeQNln9lCUAUzU4A8Ykvi7TNir13gai3T90yUdFBSrZkXGvqER/8OTlPA6+J
         M0CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :message-id:to:from:date:sender:dkim-signature;
        bh=hE57sNWyCmQVq3hI4Hdj9xE0zd8tj6UfFur0a0Dmowk=;
        b=FCvtFoqY7p7DkAgisnTYbMz2tDWo40ew+a1QC+ebpG1CRlU6wQnN1iuuopboaLA1O9
         ciOAb1fiEsrTfoyNIYea/dYRjqTjDeNOzLyR9XVPeCo1n4hIoeLwgfZ8p10m/I3Sfjg+
         LrqRwgg7yQC/VvmoOCaFVBB2TD1mEtj+NYjVlMBRjlswWzGDDoCBOescTNGx4FUhTVeM
         eIMOW48hOjsjQD7HA7HEY3ekkZYlGWGGUHvuUCMbvaVoKej73amP+BDB/PHnAOLE8x/T
         XaRFwuaLWQcqtLvLMKyt0yJdM4eUaN1JkiqaL9ZmxTH8Ytf5pxmBjCgCSQkT0sD57OsQ
         ePFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=deXQepy0;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hE57sNWyCmQVq3hI4Hdj9xE0zd8tj6UfFur0a0Dmowk=;
        b=qP5jWiTUGpDNwJQTyVJdZfylC9CtOdFxmG4R310+5Cq6YxjNt4a9BQQQ7daPWcACFM
         qC2LMS3ZCcTUBMArXgws5eyJ0aZceT/tWEkB2GUOUZTT4QO58UbzjyV3iM12tohtAxwQ
         aWHbik0mWV4PC39cpwepCZf3mQK4JE59ZZvpIWezyyiUvKZ2OY/dWWu/kRZJdT8Y0DOK
         GLRplfyy1X4HVzWK7+Q+kmGI1AR/NGZQY1IqdwYjIii7JWYy/c7S5C1CSniH+7mhu7E1
         sCqDVRl062nxM0wXGuP66UTcvrjLi7qECnAPGYDpCuUvezE2wHrrIyvXRGTQ/F1bXRem
         GjJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hE57sNWyCmQVq3hI4Hdj9xE0zd8tj6UfFur0a0Dmowk=;
        b=BfFlaqwtsffyEoXL/jcdR1CdLSQnCBT3lYM1wcpPY6rKDkMUzPFjmv8grwQjb4o0wP
         LBU8MN68kqSSgFm30nL/tiT0/pLyr4hXAOOgmvsfwDVLfSux1PFtN3cnSW6qSRdIj/4j
         WGkhYGXG1jQF3vyetvQWPFQbbxlQQ2v/wjmfkuR3lh2thXPHj38mMAy08uN6/VrCQvDS
         aLfXqeJVWXMpYJiZWOn7MxrfFwyHgIq5l8SlYi62KNv1sZQZFI/Mj5V41PH52QyZmm2M
         VVvqDiaEKmCEPJZPOKWi3e39uIF0bHpyYW/0FwopM7zX3RwkPmsz/xsjfmEb8seXkQcE
         yPRQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533XDnBHy0w388arvyDYJWya08Pw3QfzaWbHmAieCRoB20XHEdoX
	qDP3Xf0exPNaTuM+yottxSQ=
X-Google-Smtp-Source: ABdhPJwcbkZNO+2Z4Hf3Z2WUaMrnsOk7To21dVYwdqz1RpCJ8qp4sycDHww7Q73nRK3sWrLdfgA2UQ==
X-Received: by 2002:ae9:e884:: with SMTP id a126mr21842376qkg.33.1593536598187;
        Tue, 30 Jun 2020 10:03:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:248:: with SMTP id q8ls9502609qkn.5.gmail; Tue, 30
 Jun 2020 10:03:17 -0700 (PDT)
X-Received: by 2002:a37:9fcc:: with SMTP id i195mr21417576qke.415.1593536597903;
        Tue, 30 Jun 2020 10:03:17 -0700 (PDT)
Received: by 2002:a37:2707:0:b029:fa:991:7860 with SMTP id n7-20020a3727070000b02900fa09917860msqkn;
        Tue, 30 Jun 2020 05:52:38 -0700 (PDT)
X-Received: by 2002:a67:f785:: with SMTP id j5mr15087226vso.17.1593521558045;
        Tue, 30 Jun 2020 05:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593521558; cv=none;
        d=google.com; s=arc-20160816;
        b=Xhwi8SNaYNQX577/2twSIuViRs84L4oPgR8KjxLP/d5WHkvJu+99fisRdPbvzzL3jv
         53XcxgKZLpp8yfMASbdaBjbrwlfsnJpgap9ZfdsFlceew3SyQyYrZ868kyofdbqwhVvi
         qPRoBQYXgdj8xqVElez5GZy/QqAkV3901IvUu9VD5aoXco4g3WnYBA0tXrqZMoAbgSRC
         mX0enUhZA28Ncc9T8jEz6wjKzEPbc5FMfDajlMZNfdWCTfLdzA5bihn8bGuCOS7E49tr
         I6UIpDvGkphsY3Nqno7PiAYR0i8MQ6YxIOiFuVatHIbK6pBdVrEQnuwRyiyoGxzA7kEQ
         NJUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:from:date:dkim-signature;
        bh=WBiapi9V1jF3NWuJqN5VE7+c+Hkm2Nl+sgfscYBjyo4=;
        b=AxTRnYi7/zSyENQoPN38LOPBF3XygE0ZVRyPdlB3LL9DRC0P/w0i1p/kAiGCg3UGyy
         QkWU1sDdNWX6IZ81MHwovm7v85hXjreh62nZgL3I4in0DZPfZsjM9bxDg+sbzk4KVTSk
         kDonL6qDzDviXgCEzSihAqTYq/JjRxURMPFcDeeR/exDRTIttH9jSknMBbhs5TJt6cDo
         SpCu3h4w8AZBhGB+cmzF3dOQLddM1ChL1QeTCcAVXs8vKP3rleAEufop06m/zMrKgUNW
         hLPbvIoyzVnMdThXHVHxXBXd95JiG19x7y4LJX2uWZAdsNwANZZVC2n5g+UhgG+4g2Lr
         mXBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=deXQepy0;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id t63si224135vkt.2.2020.06.30.05.52.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 05:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-LypjGSc9P5C4el2mOowqIw-1; Tue, 30 Jun 2020 08:52:22 -0400
X-MC-Unique: LypjGSc9P5C4el2mOowqIw-1
Received: by mail-qv1-f69.google.com with SMTP id m18so751253qvt.8
        for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 05:52:22 -0700 (PDT)
X-Received: by 2002:a05:6214:1586:: with SMTP id m6mr18832032qvw.171.1593521542444;
        Tue, 30 Jun 2020 05:52:22 -0700 (PDT)
X-Received: by 2002:a05:6214:1586:: with SMTP id m6mr18832018qvw.171.1593521542237;
        Tue, 30 Jun 2020 05:52:22 -0700 (PDT)
Date: Tue, 30 Jun 2020 05:52:21 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8e6757e9-309c-47c2-a2ce-fbfa5a971c44n@googlegroups.com>
Subject: Concurrent logins to different interfaces of same iscsi target and
 login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_56_1559709577.1593521541887"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=deXQepy0;
       spf=pass (google.com: domain of abawer@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

------=_Part_56_1559709577.1593521541887
Content-Type: multipart/alternative; 
	boundary="----=_Part_57_95856276.1593521541887"

------=_Part_57_95856276.1593521541887
Content-Type: text/plain; charset="UTF-8"

[Sorry if this post is duplicated, haven't seen it is published in the 
group yet]

Hi,

Have couple of question regarding iscsiadm version 6.2.0.878-2:

1) Is it safe to have concurrent logins to the same target from different 
interfaces? 
That is, running the following commands in parallel:

iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
10.35.18.121:3260,1 -l
iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
10.35.18.166:3260,1 -l

2) Is there a particular reason for the default values of  
node.conn[0].timeo.login_timeout and node.session.initial_login_retry_max?
According to comment in iscsid.conf it would spend 120 seconds in case of 
an unreachable interface login:

# The default node.session.initial_login_retry_max is 8 and
# node.conn[0].timeo.login_timeout is 15 so we have:
#
# node.conn[0].timeo.login_timeout * node.session.initial_login_retry_max =
#                                                               120 seconds


Thanks,
Amit

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8e6757e9-309c-47c2-a2ce-fbfa5a971c44n%40googlegroups.com.

------=_Part_57_95856276.1593521541887
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><span>[Sorry if this post is duplicated, haven't seen it is published =
in the group yet]</span></div><div><span><br></span></div><div><div>Hi,</di=
v><div><br></div><div>Have couple of question regarding iscsiadm version 6.=
2.0.878-2:</div><div><br></div><div>1) Is it safe to have concurrent logins=
 to the same target from different interfaces? <br></div><div>That is, runn=
ing the following commands in parallel:</div><div><br></div><div>iscsiadm -=
m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http://10=
.35.18.121:3260">10.35.18.121:3260</a>,1 -l</div><div>iscsiadm -m node -T i=
qn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http://10.35.18.166:=
3260">10.35.18.166:3260</a>,1 -l</div><div><br></div><div>2) Is there a par=
ticular reason for the default values of&nbsp; node.conn[0].timeo.login_<sp=
an></span>timeout and node.session.initial_login_<span></span>retry_max?</d=
iv><div>According to comment in iscsid.conf it would spend 120 seconds in c=
ase of an unreachable interface login:</div><div><br></div><div># The defau=
lt node.session.initial_login_<span></span>retry_max is 8 and<br># node.con=
n[0].timeo.login_<span></span>timeout is 15 so we have:<br>#<br># node.conn=
[0].timeo.login_<span></span>timeout * node.session.initial_login_<span></s=
pan>retry_max =3D<br># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 120 seconds<br></div><div><br></div><div><br></div><div>Than=
ks,</div><div> Amit</div><span></span></div><div><span></span></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8e6757e9-309c-47c2-a2ce-fbfa5a971c44n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/8e6757e9-309c-47c2-a2ce-fbfa5a971c44n%40googlegroups.com</a>.=
<br />

------=_Part_57_95856276.1593521541887--

------=_Part_56_1559709577.1593521541887--

