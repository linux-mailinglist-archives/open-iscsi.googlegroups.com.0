Return-Path: <open-iscsi+bncBCDKFKEK2EMRBHNLSLWAKGQEQIC4XKQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E950B8D5D
	for <lists+open-iscsi@lfdr.de>; Fri, 20 Sep 2019 11:02:23 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id b143sf7262334qkg.9
        for <lists+open-iscsi@lfdr.de>; Fri, 20 Sep 2019 02:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=grZxiWYVqA82sP94Bni+3ppGLNaG3Tz31rUmniUUTlw=;
        b=irUC4eeZloO97V/iv/t3S+B+W7h60yLq525WgS5EIlMV63c4mJ0pknu+tn3RuApWtK
         RsrpTd5XXxAE/ysbDbXjlBUIU8RZDl5BR+aVKFMhFp5h+uVuG66DbJkjQARoojSAUgDJ
         ri3FC3/edY3uspSCqP+wBdMwsLa2LeG5LL93wWDHsw50s/EFURKhKJOoiOL9rRDrYY0e
         KoYoH79yO3mM9MsK/LTewkQIhjfZk3Dp1uJ1H6YKxd+nKUiZBOkmcPJWF/v5s9s6XA/1
         fpKdXp1NCq9vTSg/GsOKAYKtEVSMIqGjKPAd6Rzz/J9OCfhu6CQhTPkt1peVkQyrC/Cj
         RQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grZxiWYVqA82sP94Bni+3ppGLNaG3Tz31rUmniUUTlw=;
        b=YDZtNK7m6kJQGve4xD9Fzmymgp+hYIzmROdsY6BMUl4p/X3Yl6LVUtPtSWA3hIJ/EO
         9m5qmVSvEkbqXvNX0bYYPCYpoTCeg5UT/au5uL66uYAdP0GkbImRsa/kbBmkVEibpE3E
         o72ccQFjQX+RsF0H3r9VeY+Sj8tLz6Dz5UTcguAvR9F1mJvlQQ/OWl47nV51Zzm9SVPo
         oxzu1/Om1y3uyBkxyq3GMwaXfRDdX6tMepU+hqbxuUQdgTWmLc8/2h8YionNQYyaff62
         Lsbr0uM6I4Tiw02Kgf74VWuR56gQVrzq3GKlH9FJLSXpSlYqqQGtCOZMnN5RCPMMpoDt
         KCLg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVRand1S5947pYSkk1FoKclHiczIyNEMQmo6yGKC+NNCBTIBfbA
	QYYLlYTHIibWeUYGPVJEDaI=
X-Google-Smtp-Source: APXvYqxgTzvoiyzhZtt7wt7lJAVZ58VaiREfRQcDICATAyUXxgar2xOLR3pbc/WmhnNUdVGvfTjWEQ==
X-Received: by 2002:a05:620a:483:: with SMTP id 3mr2510064qkr.468.1568970142103;
        Fri, 20 Sep 2019 02:02:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:ef0f:: with SMTP id d15ls2419019qkg.8.gmail; Fri, 20 Sep
 2019 02:02:21 -0700 (PDT)
X-Received: by 2002:a37:a48b:: with SMTP id n133mr2587005qke.398.1568970141298;
        Fri, 20 Sep 2019 02:02:21 -0700 (PDT)
Date: Fri, 20 Sep 2019 02:02:20 -0700 (PDT)
From: Dirk Laurenz <dirk@laurenz.ws>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
Subject: iscsiadm unable to connect to iscsd
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5267_1601831919.1568970140585"
X-Original-Sender: dirk@laurenz.ws
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

------=_Part_5267_1601831919.1568970140585
Content-Type: multipart/alternative; 
	boundary="----=_Part_5268_2062779304.1568970140585"

------=_Part_5268_2062779304.1568970140585
Content-Type: text/plain; charset="UTF-8"

Hi,

want to read the session stats for a connection, but iscsiadm claims not to 
be able to connect to iscsd.
I'm not sure how to debug this:

$host:/etc/iscsi # iscsiadm -m session
tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)
tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flash)
tcp: [3] $IP3:3260,1 $host3:lun01 (non-flash)
$host:/etc/iscsi # iscsiadm -m session -r 2 -s
iscsiadm: Could not execute operation on all sessions: could not connect to 
iscsid

any idea?

OS is SLES4SAP12 SP4

Regards,

Dirk

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ab9746b4-36ec-4866-b76c-2c5ea11cdd7b%40googlegroups.com.

------=_Part_5268_2062779304.1568970140585
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>want to read the session stats for =
a connection, but iscsiadm claims not to be able to connect to iscsd.</div>=
<div>I&#39;m not sure how to debug this:</div><div><br></div><div><div>$hos=
t:/etc/iscsi # iscsiadm -m session</div><div>tcp: [1] $IP1:3260,1032 $host1=
-lun01 (non-flash)</div><div>tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flas=
h)</div><div>tcp: [3] $IP3:3260,1 $host3:lun01 (non-flash)</div><div>$host:=
/etc/iscsi # iscsiadm -m session -r 2 -s</div><div>iscsiadm: Could not exec=
ute operation on all sessions: could not connect to iscsid</div></div><div>=
<br></div><div>any idea?</div><div><br></div><div>OS is SLES4SAP12 SP4</div=
><div><br></div><div>Regards,</div><div><br></div><div>Dirk</div><div><br><=
/div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ab9746b4-36ec-4866-b76c-2c5ea11cdd7b%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/ab9746b4-36ec-4866-b76c-2c5ea11cdd7b%40googlegroups.com</a>.<b=
r />

------=_Part_5268_2062779304.1568970140585--

------=_Part_5267_1601831919.1568970140585--
