Return-Path: <open-iscsi+bncBCLI32UIRUJRBWHO5T3QKGQEEQ4VJJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE2420F54D
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 15:00:09 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id b188sf4822223oia.4
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 06:00:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593522008; cv=pass;
        d=google.com; s=arc-20160816;
        b=nT3AEE8DUSFnXHOu4+vgPppNgjLd5WQx2s7XGsMfnK/FJdJ1YxUaFvpStBslnLJINg
         WqKHqaVUAhQx348o6s7WPIhdfyjP5W2pfMbQHUIf3wYPi5W4+gQ9JqfwpJKiS5LXaT5v
         +Pha6j8pjP+FN83D+BA4zl2F9Yd2yEpiJlCpNGwtwQwjdLeUbAQkHmY7yHRmlqx0YxZ7
         KdbSXbFaKia32k7kLalvBe5BOkB/WIdFfPWmvA6Y6vkPs/umvcuPM8t6OJ9nN9X+8QAD
         OSzIN6FR+nORjYp+3nh2QCzPYLcjw0ZLcnOvm/vzYlRQaTgPrBmdga5iZiwEcbcbBGHz
         WUEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :message-id:to:from:date:sender:dkim-signature;
        bh=6SEytApmfRJpx9lX7QZ/miCTMYYN+Mi6ViOoL77PCyY=;
        b=u+E3GwYZ5wwIn/IVlJY+fHNAHTx4J75vdKFrJtKKxEBFyKwCtTftTUzdc2Hl9Ehw66
         igg4Errh4Il69C23EHoC5ETW3P9J0Bau7fJIsT8lpiXcnOwykotS3uKwUPs6rC0t1/kb
         m38bz4lsFeB6d8G7Cjk3LsMbd8Zp/svX2GJSe4tl7v96acpWB0jm6mT7qyJ23MRS/2gS
         IsWi/asKWct2stJtEDfVuLzL74MloIsCh6ExUvq5GCJlvDCg0aL0z9rE9bXEfuETWAO0
         Oe6mUlNYeLPmkg8t6KWCzZ+tCvjjisqNErCjGp213fQD2YZ4TcorcWGou8GGLDw873PV
         GwhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TFdvTa+E;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6SEytApmfRJpx9lX7QZ/miCTMYYN+Mi6ViOoL77PCyY=;
        b=dv3BX6OoAYltKU5MomoiOU74igDJ+JPnpxqRvSZUd1xboxwMKc9p/yCtpcPcaEvDuY
         ccTsPKRYJM+z0QURv5AE2DNpH0ugJ9aHvUyp9oC2cTHEgXh1SN/tCsKQ8PlG0q1eH4UO
         sfVDHjqTP9i1e31hO5aJdH1RgDzIge77sSDfQXuH6BXh9wHOnon8yAzGQiYxbog8uelN
         dbtRYk3koqZu8UathhrhlBSsCrefKWZsgu4xTDikV3dtMl9Y8/9TzbCMuviWbjQigrEP
         BHWXTLWqVwDdNLoE+dxgzB0O5Fjud5gvJCzGFZxYQT4QLkg/AeuzSVzRPVFAS8CcZGMG
         KR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6SEytApmfRJpx9lX7QZ/miCTMYYN+Mi6ViOoL77PCyY=;
        b=l27DJMgF2HbTNt9M9QY0X/DLXQV7SN0IETqUbNrIJ8TbTLAOZMIIRv6/kl0AtZlKFK
         EVSUegCsTonqUpoMThzB7AnBH2Tsxdz/dwX88sBbnQ/ytiFOXMSksTk3PJTIKL0iAQ0l
         cXprYWlacRct18wEDlME8ZXc2P5+MJleVc1FQ+tXnr9IOzqL4cG7O16QT0B4Ncsbky6d
         mOBtisYW27aJQBH5ut/sIGGdksFCHZtx39DKs0UrZSubKTB/zU7t8D5ivSRalGKtFmaj
         6DXNOAyDOMg+8bl+vkus4DoO+n3y/NYHNO0P1z8Nq6IcQmy34QYQt82moFLgfka9MFco
         d9RA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533TitrPSbhk9PvZRC3Yk0fOa/YsvSgjTlLyunujrfGHkXrsKVh/
	voZ5O1ybCtvsVWfO6a9T7RI=
X-Google-Smtp-Source: ABdhPJxAs6rZxBnk/2jqRz0WJzdh5pVQEy13KMqN44mGS+tndGjR3aSSvx67pMIrtVMotjNuY2XyEw==
X-Received: by 2002:a9d:3ec2:: with SMTP id b60mr11703720otc.355.1593522008243;
        Tue, 30 Jun 2020 06:00:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:df04:: with SMTP id i4ls1136094oou.2.gmail; Tue, 30 Jun
 2020 06:00:07 -0700 (PDT)
X-Received: by 2002:a4a:41ca:: with SMTP id x193mr18123165ooa.84.1593522007631;
        Tue, 30 Jun 2020 06:00:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593522007; cv=none;
        d=google.com; s=arc-20160816;
        b=FTg+FFx3Q6JduUsXjh2awHyTwfcCB/bafNnuQzflbkOStAkAkZJpEw10dvd00r3dpr
         3QOKhbxcv8/T9qV2Z3m44MNz97xSGfMTIEyrpGfMkis6SDrx6sT9Igwv7uHsgLnHYSCh
         nmB9wim087Vt+8+IfBoLFUCEZl9M9wVFhayYbJE3IcuMEwh2ORVmI2IzyB/sK64SNiRo
         Gya01hNDvnuF+MLnrdBi67HUo1nGNsJq6WRWAJRXvz4Y8pCeNOfrATLy/MJ0ecI6ijbt
         ptUFkLv2GaDWCPLT4SeuH3w39VKXkAu7M962AzJg37X3Tk9AKnRCxnN1jHqnHqoNGpqy
         5EmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:from:date:dkim-signature;
        bh=70g0RihpZxtRnLo3nlc3lUvmjnTEHGkp22flVW4Ucrk=;
        b=gNKz1iAyF+UAGODKsEdamMKbzHWFpJCpF6TLRYJWaqWDnLHvUBNCWTMQVEvUsYb8F2
         WQ2gAv5rN5n0JBPzsiaUhNqoCU9WPaAtLXcGHyv+90W1xsBngV2pHdxGuR2KwUofrpVo
         7Ggt2rhOP//m2juJljyXMLruIdCXil8wBMNGugIQ4gHVF8l7nE+KwkbhPlKgO+HWdU1P
         zd65Kc2EYasHhwnT7FtvoA92UhrCivB5VulRBgQrbdRk3K6aFCGb/sTYS9GaJtuexjfq
         uzYzOIQTP+mUNSwOKgCVqwh4NAAf3aJ+QHZRfRtzzT6mNfuQSnuirKnvmTrORm6oEkbc
         VugQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TFdvTa+E;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id m23si258603ooe.0.2020.06.30.06.00.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 06:00:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-cnOiU1xaOam1lriS4cOH_Q-1; Tue, 30 Jun 2020 09:00:04 -0400
X-MC-Unique: cnOiU1xaOam1lriS4cOH_Q-1
Received: by mail-qv1-f69.google.com with SMTP id g17so12091204qvw.0
        for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 06:00:04 -0700 (PDT)
X-Received: by 2002:ac8:4982:: with SMTP id f2mr21334652qtq.182.1593522004311;
        Tue, 30 Jun 2020 06:00:04 -0700 (PDT)
X-Received: by 2002:ac8:4982:: with SMTP id f2mr21334641qtq.182.1593522004137;
        Tue, 30 Jun 2020 06:00:04 -0700 (PDT)
Date: Tue, 30 Jun 2020 06:00:03 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
Subject: Concurrent logins to different interfaces of same iscsi target and
 login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_120_1504976958.1593522003297"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TFdvTa+E;
       spf=pass (google.com: domain of abawer@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

------=_Part_120_1504976958.1593522003297
Content-Type: multipart/alternative; 
	boundary="----=_Part_121_2044807183.1593522003297"

------=_Part_121_2044807183.1593522003297
Content-Type: text/plain; charset="UTF-8"


[Sorry if this message is duplicated, haven't seen it is published in the 
group]

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com.

------=_Part_121_2044807183.1593522003297
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div><span></span></div></div><span><span><span><span><span><span><spa=
n><span><div><span>[Sorry if this message is duplicated, haven't seen it is=
 published in the group]</span></div><div><span><br><span dir=3D"ltr"></spa=
n> </span></div></span></span></span></span></span></span></span></span><sp=
an><span><span><span><span><span><span><span><div><span></span></div></span=
></span></span></span></span></span></span></span><div><div><div><div dir=
=3D"ltr"><div>Hi,</div><div><br></div><div>Have couple of question regardin=
g iscsiadm version 6.2.0.878-2:</div><div><br></div><div>1) Is it safe to h=
ave concurrent logins to the same target from different interfaces? <br></d=
iv><div>That is, running the following commands in parallel:</div><div><br>=
</div><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p=
 <a href=3D"http://10.35.18.121:3260">10.35.18.121:3260</a>,1 -l</div><div>=
iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D=
"http://10.35.18.166:3260">10.35.18.166:3260</a>,1 -l</div><div><br></div><=
div>2) Is there a particular reason for the default values of&nbsp; node.co=
nn[0].timeo.login_<span></span>timeout and node.session.initial_login_<span=
></span>retry_max?</div><div>According to comment in iscsid.conf it would s=
pend 120 seconds in case of an unreachable interface login:</div><div><br><=
/div><div># The default node.session.initial_login_<span></span>retry_max i=
s 8 and<br># node.conn[0].timeo.login_<span></span>timeout is 15 so we have=
:<br>#<br># node.conn[0].timeo.login_<span></span>timeout * node.session.in=
itial_login_<span></span>retry_max =3D<br># &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 120 seconds<br></div><div><br></div><di=
v><br></div><div>Thanks,</div><div> Amit</div></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com</a>.=
<br />

------=_Part_121_2044807183.1593522003297--

------=_Part_120_1504976958.1593522003297--

