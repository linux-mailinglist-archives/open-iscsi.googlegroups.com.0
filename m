Return-Path: <open-iscsi+bncBCLI32UIRUJRBVXA5X3QKGQEIXKBYXA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EB820FA1B
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 19:03:19 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id a12sf4336220oia.23
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 10:03:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593536598; cv=pass;
        d=google.com; s=arc-20160816;
        b=JZvQ3sjMnX7nyaeHyoOCqA2X71doeGVaF5HzkhwBebyhrkizxUJDCE+W2kHoxZOQTn
         1yfHzusa3FCTgQvPuuFZENEK58pOqp6D8WPP0XgistiMeKZqngV1b46zt1hFsof4FqzQ
         UYjdsreinEVGUkdHblbZwegAfgQbM0opKof+2fD2PSmDyngmNP510ZS5BSUFS3LYcA47
         WXpeVNBYRIeVB1sTJbdhpNpFWvtKQ0ldBOo0b8oPvFJdAlX3vGkV80q55TmleT0qzm1p
         h5QQjn/Ijxb8f+ybp26G4lUgNHMbj3XDF8AXxlcceQKWiLOFZMnsyFPyosocVSnt6aP+
         89LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :message-id:to:from:date:sender:dkim-signature;
        bh=eAlIhIIFbJPNcnn6RHnbDSdWGMUfVdflk5/iNL/qp3Y=;
        b=QGnus22fHQYTj1VthIrGRUZNtE8PAV9FJBzdXHEliT17qEy+dukuOr36W0+EgfDNRD
         rxsD5p7UV3QFRxeKaUz6OMDPeT2uv01F7V0Qm3TPNdZF2DC+ZwqUh5tgL2+87r6NtIJE
         KSj9/kxgKInVlYBUZivHR14RbCIUWyOwCqG5bU6MzgYCqUpJxJvuovxRs1hTLOsyk3Kz
         TCVA0l5BJVWi32S19AHnlTr7bD1Qz/Ki2VnCfEnRXIXSc2YTaOWPqGY04K1WK3CdQqkv
         oMVsfGMDY4linuZ04I594ofqxAaYz5Fpcg33wJyfL4jD/dD8KAu03SRf+3IZM2SBhY9F
         BeXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ey2xkK/K";
       spf=pass (google.com: domain of abawer@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eAlIhIIFbJPNcnn6RHnbDSdWGMUfVdflk5/iNL/qp3Y=;
        b=WK3nUHl26tiKRHIeDDfuVIXJHXku5WtY1RtYrcr3AruHzqdKnBj89t0kCcl7pL8KXu
         aUqK+VlvWLZXO5YFzV+aLGabNQc5+3Pi1znSyGoKO/+zCRZdTyPJrKtZisWSc1KgyJ6w
         gmIHZNI3Ud+mSFa+eqDUcIj/eVqLSTLDHUxLlAkvMzpX/dyOkIdjDzgKEWbV0yRbzu1j
         jwLYGgvf2MSYBhcrJIkOvt5fVnkGzydpD46X1WfrFSjug5mee6jDn5DRRegEndI7VK2D
         2ji+m9z98sT6eHdjMgrEbZ3QMlJNEpbkU6BuoX81UXED5D/MXSwfXOJrkcGqcrfezd3y
         Qa0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eAlIhIIFbJPNcnn6RHnbDSdWGMUfVdflk5/iNL/qp3Y=;
        b=tU3g7+varr3ZZUSpAEyaMStO4P2mA5JKyov4it/4VLdHEfB+SHyJpt55RSGbsCzgd7
         MPFHrunhdcevvcvJaLQMRemR2ymk28c2JjHtP21nJdK/5lBYCUFpKE1bof7Dlpbyapkq
         C+hzB57jgqHonjUjQYj5iAhdWtWGtM0dBhY5BCs6EiQlDqLalQ7Zdk5paZo0RN59ohd/
         hItUfSEb6HRLw49DmTYN2XHWX7CfcpKKTBf8FU0yWjWmCiy9eR20XdHuV7vXKSH6l/6O
         A/+9D1y1yMVJxs9kdZfJO3Ajlhts95Ib+O0ENG9ETs8iaNyDSlOW6fiu0UP+JgZchIcU
         vEcA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530hNnLF8LNNlXvKPxl3RePb8nXj2heyHVM6c674z0xlIqaJ/qPs
	dsjNGb/rRp/vD9XDJ8acXFQ=
X-Google-Smtp-Source: ABdhPJz3Psb4uRkdIHXtnu6SnlnpRpw3IlAjjDt5R242LspqK2PdlkFY6VEV5dYuKyQ2KQZj147Z9w==
X-Received: by 2002:a4a:8c28:: with SMTP id u37mr18974052ooj.26.1593536598143;
        Tue, 30 Jun 2020 10:03:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls1081474otp.8.gmail; Tue, 30
 Jun 2020 10:03:18 -0700 (PDT)
X-Received: by 2002:a9d:2604:: with SMTP id a4mr19540989otb.334.1593536597946;
        Tue, 30 Jun 2020 10:03:17 -0700 (PDT)
Received: by 2002:aca:d982:0:b029:c2:a9a:e943 with SMTP id q124-20020acad9820000b02900c20a9ae943msoig;
        Tue, 30 Jun 2020 04:00:42 -0700 (PDT)
X-Received: by 2002:aca:b782:: with SMTP id h124mr16004420oif.72.1593514842541;
        Tue, 30 Jun 2020 04:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593514842; cv=none;
        d=google.com; s=arc-20160816;
        b=BV9U2Kav7nQbsmMKHvh9afXudnSorH/lGP2hZqMwQwCqS4h8OSdUF4FWIEZzRzOVpM
         /0Ea2kayAgVEQ/vSsNCbMo6VpFXNwDfqZyFG68FRkYQqt7FYl4bX7JMpQR70Q+bscgpu
         weVpRDQQa6I7CalfaEGiMP+zpjG95xomv9mgd1zz1CE++Jn3C8vSa39szDSMALycZGbi
         HW+vFvlxUM4fpOSovkCE62x/MvG4DV33fTecHVVzwQ2D8+pnJE8aDMLYQUu3ElaZJjAI
         rAQzl69p1GLtQB+2IhbjpE4NPcgPM2PqCAIKSTPa+Ga7fIqor80cNCwZZPJhlA3L3O9e
         5buA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:from:date:dkim-signature;
        bh=ubP68Sn8F9tcI+HN/OYUCVyLYyxPOfLUk+GUbwqHJH0=;
        b=AqaF6Opi0gLfN/XpNqGsHaLEaf++vuC7FDJ4EV3MRBv5w9sMIcmVNHKBXRd4BNJGhO
         LSi7czL0IPL1ogBFGRdlvudgd2cIJ52ePdG+yC7uNr5dcMoAwz7w5TGznOB8zBhRwV80
         VFLAQEerqKD5qUsqLBTQ830wH5Roy3TKuWwpOBS3JqbHF2Hgb9NuJCvLzjqmUEp38WV2
         HdsMGESIthuUwulx9yR1ZWxfxtIE2yJZwHOZ5ppVzoJAXcguHzhMEIbPLx3h8jsgNg7C
         hnhkkRNUyiE+or7ZpdKYOSFczUWaMlBrKBtTBZwUxlDigOHyo4FNXEV2jhByTWkkEMAz
         Os2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ey2xkK/K";
       spf=pass (google.com: domain of abawer@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id y16si93014oot.2.2020.06.30.04.00.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 04:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420--27lk_CxMl6MJejyHGt5EQ-1; Tue, 30 Jun 2020 07:00:37 -0400
X-MC-Unique: -27lk_CxMl6MJejyHGt5EQ-1
Received: by mail-qt1-f198.google.com with SMTP id a52so2980504qtk.22
        for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 04:00:37 -0700 (PDT)
X-Received: by 2002:a37:6886:: with SMTP id d128mr19721792qkc.12.1593514837308;
        Tue, 30 Jun 2020 04:00:37 -0700 (PDT)
X-Received: by 2002:a37:6886:: with SMTP id d128mr19721773qkc.12.1593514837120;
        Tue, 30 Jun 2020 04:00:37 -0700 (PDT)
Date: Tue, 30 Jun 2020 04:00:36 -0700 (PDT)
From: abawer@redhat.com
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <94cd4d2e-cf0d-4e58-a3a4-e9287928190eo@googlegroups.com>
Subject: Concurrent logins to different interfaces of the same iscsi target
 and login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_1334_261525644.1593514836862"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Ey2xkK/K";
       spf=pass (google.com: domain of abawer@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=abawer@redhat.com;
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

------=_Part_1334_261525644.1593514836862
Content-Type: multipart/alternative; 
	boundary="----=_Part_1335_1714911911.1593514836862"

------=_Part_1335_1714911911.1593514836862
Content-Type: text/plain; charset="UTF-8"

Hi,

Couple of questions regarding iscsiadm version 6.2.0.878-2:

1) Is it safe to have concurrent logins to different interfaces of the same 
iscsi target?
That is, having following commands run at parallel:

iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
10.35.18.150:3260,1 -l
iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
10.35.18.121:3260,1 -l


2) Is there a particular reason behind the default values for 
node.conn[0].timeo.login_timeout  and node.session.initial_login_retry_max ?
According to comment in iscsid.conf we are going to wait 120 seconds in 
case of an unreachable interface which is quite long.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/94cd4d2e-cf0d-4e58-a3a4-e9287928190eo%40googlegroups.com.

------=_Part_1335_1714911911.1593514836862
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Couple of questions rega=
rding iscsiadm version 6.2.0.878-2:</div><div><br></div><div>1) Is it safe =
to have concurrent logins to different interfaces of the same iscsi target?=
</div><div>That is, having following commands run at parallel:</div><div><b=
r></div><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default =
-p 10.35.18.150:3260,1 -l</div><div>iscsiadm -m node -T iqn.2003-01.org.vm-=
18-198.iqn2 -I default -p 10.35.18.121:3260,1 -l<br></div><div><br></div><d=
iv><br></div><div>2) Is there a particular reason behind the default values=
 for node.conn[0].timeo.login_timeout=C2=A0 and=C2=A0node.session.initial_l=
ogin_retry_max  ?</div><div>According to comment in iscsid.conf we are goin=
g to wait 120 seconds in case of an unreachable interface which is quite lo=
ng.</div><div><br></div><div># The default node.session.initial_login_retry=
_max is 8 and<br># node.conn[0].timeo.login_timeout is 15 so we have:<br>#<=
br># node.conn[0].timeo.login_timeout * node.session.initial_login_retry_ma=
x =3D<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 120 seconds<br><br></div><div>Thanks,</div><div>Amit<br></div></d=
iv>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/94cd4d2e-cf0d-4e58-a3a4-e9287928190eo%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/94cd4d2e-cf0d-4e58-a3a4-e9287928190eo%40googlegroups.com</a>.=
<br />

------=_Part_1335_1714911911.1593514836862--

------=_Part_1334_261525644.1593514836862--

