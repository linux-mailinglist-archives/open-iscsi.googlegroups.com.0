Return-Path: <open-iscsi+bncBCTJ72WV6UHBBO6HTGPQMGQEAQDSZSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6B969223D
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Feb 2023 16:33:20 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id kd28-20020a056214401c00b0053cd4737a42sf3326186qvb.22
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Feb 2023 07:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SgFqUAbUMBFqCCL5zbHPJuekW9AwoZZwIT1W2QGln4o=;
        b=kSQXLidCaj2DfrgG6qzMYrNDT/nvc/Otritg+2bIl4ob5CnLeMcg5n3S3Et2PstqYe
         bQ6lwlM7mbg7OiByPrLheLJjAWE0xscYfUIzmqjXZOG4kBa6A8TbfzGQLRCTRUti62o0
         bvlmgZubMhkOTTt00hkI+qK998IV3wg8g7va6jZvr/WzwqK0gySk/rovxqOvg4XaYlxY
         s2IRZwvDXw33Du6GsWcdWB5aYAcVZry78hoJ73LcNd+bqXd8dSAOWzUTFuaziT0Sai1m
         VFYw4pJ1ed8q4XnShVi1LEE+8vQoO5UeFoGoI3CnLrL/UDawKKscFm+a7OcssM0w5Dyo
         8bpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SgFqUAbUMBFqCCL5zbHPJuekW9AwoZZwIT1W2QGln4o=;
        b=OJnOOjIUjIuzJy3GqMOkfFcJK+lKnQcydbgoLVrWHpXnB2RCUsk1T4xpjZDNTsU9Zv
         ZjkH3NdRl6Z1mRbGrmBGc0h4f7Pr971a1GP107fHoj76pFLD3OpYL63V9Lq+GUihgq7Z
         G7wmqJ0HioySA2YFyLbZXDcak21Ze1J8Rp8U0ieY/8FYd8dpqx16IKVFJVJ8QFBQkHq4
         N/VQp/NJ6n9gCdU1PLepFmur4PlAueo6uUonw2cdLZkReMwjKEwb1acMcKuFQR0Y5pGx
         28OCszRzVqI1LrDY9ayo3yeDuKIrleupUnceqlFYfnxH1HBtCOVXByaTCVlWeRon/c3C
         pN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SgFqUAbUMBFqCCL5zbHPJuekW9AwoZZwIT1W2QGln4o=;
        b=pmfLJrN9XgbtsA4Ogh6sBciHO8MsHGjYy5OpxJ/PPPGrJg1WQt18CWfoX9LqTs3PxO
         kSk5X2q/B656IGZCasPopX832xWXXEmFrPIn1lSBqlOEkUN7h2ir/pFbDCRb6t9vQ7tW
         JJysFZdqaC/QfhfZPi4ok76DTY3Mb3BQXufd6+OwaiDU8cEhSZWoUezcoMWRKvuRXnA0
         bEnOZG6JQX5dEp4wP+cRXTeNTPpdxEPgM7RJUHrWh//vVT6CDE/hMXNquMvs81XfjQaZ
         SZFfBcXw5oKpf5TfcrQJsZWrI/ubldw/U1PM5buQodKCDeYzaIk3uNr4BOdWUjUUSXlo
         ar4A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKU0456F8VO7rF1CbsqjbiGiHkvUTFVpeu2ZAOeZmely98Rn6pTy
	kOI0iQxigAeAgBfh9wmECWE=
X-Google-Smtp-Source: AK7set8MHYwWX2KnZa0WhcFLc+OV/53hsk7qu6yO/waq06CwbpWh6ls8xDTHsYWSENBIViezD3onXQ==
X-Received: by 2002:ac8:5b90:0:b0:3b8:409b:799e with SMTP id a16-20020ac85b90000000b003b8409b799emr3265087qta.340.1676043196996;
        Fri, 10 Feb 2023 07:33:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:67c4:0:b0:3ac:c6f0:fe49 with SMTP id r4-20020ac867c4000000b003acc6f0fe49ls6107595qtp.7.-pod-prod-gmail;
 Fri, 10 Feb 2023 07:33:15 -0800 (PST)
X-Received: by 2002:ac8:7f83:0:b0:3b8:345e:d9aa with SMTP id z3-20020ac87f83000000b003b8345ed9aamr2546727qtj.267.1676043195138;
        Fri, 10 Feb 2023 07:33:15 -0800 (PST)
Date: Fri, 10 Feb 2023 07:33:14 -0800 (PST)
From: Turritopsis Dohrnii Teo En Ming <tdtemccna@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <3b3e946f-0e51-4ab5-9bd9-25a779056816n@googlegroups.com>
Subject: I have successfully mounted iSCSI targets from Synology NAS in
 Debian 11 Linux server for a construction company at Defu Lane 10,
 Singapore on 10 Feb 2023 Fri
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2768_189937641.1676043194298"
X-Original-Sender: tdtemccna@gmail.com
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

------=_Part_2768_189937641.1676043194298
Content-Type: multipart/alternative; 
	boundary="----=_Part_2769_1727110784.1676043194298"

------=_Part_2769_1727110784.1676043194298
Content-Type: text/plain; charset="UTF-8"

Subject: I have successfully mounted iSCSI targets from Synology NAS in 
Debian 11 Linux server for a construction company at Defu Lane 10, 
Singapore on 10 Feb 2023 Fri

Good day from Singapore,

I have successfully mounted iSCSI targets from Synology NAS in Debian 11 
Linux server for a construction company at Defu Lane 10, Singapore on 10 
Feb 2023 Friday.

These are the 5 reference guides I have followed. Please use the following 
guides in sequence.

[1] How to Configure Static IP on Debian 10

Link: https://www.snel.com/support/how-to-configure-static-ip-on-debian-10/

[2] Debian SourcesList

Link: https://wiki.debian.org/SourcesList

[3] About the /etc/resolv.conf File

Link: 
https://docs.oracle.com/en/operating-systems/oracle-linux/6/admin/about-etc-resolve.html

[4] iSCSI: Introduction and Steps to Configure iSCSI Initiator and Target

Link: 
https://calsoftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-iscsi-initiator-target.html

[5] How Do You Make an iSCSI Target in Synology?

Link: https://linuxhint.com/make-iscsi-target-synology/#b6

Please also note that openssh-server was not installed. To install it, run

# apt install openssh-server

Edit /etc/ssh/sshd_config

and set

PermitRootLogin yes

# systemctl restart sshd

Regards,

Mr. Turritopsis Dohrnii Teo En Ming
Targeted Individual in Singapore
Blogs:
https://tdtemcerts.blogspot.com
https://tdtemcerts.wordpress.com

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3b3e946f-0e51-4ab5-9bd9-25a779056816n%40googlegroups.com.

------=_Part_2769_1727110784.1676043194298
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Subject: I have successfully mounted iSCSI targets from Synology NAS in Deb=
ian 11 Linux server for a construction company at Defu Lane 10, Singapore o=
n 10 Feb 2023 Fri<br /><br />Good day from Singapore,<br /><br />I have suc=
cessfully mounted iSCSI targets from Synology NAS in Debian 11 Linux server=
 for a construction company at Defu Lane 10, Singapore on 10 Feb 2023 Frida=
y.<br /><br />These are the 5 reference guides I have followed. Please use =
the following guides in sequence.<br /><br />[1] How to Configure Static IP=
 on Debian 10<br /><br />Link: https://www.snel.com/support/how-to-configur=
e-static-ip-on-debian-10/<br /><br />[2] Debian SourcesList<br /><br />Link=
: https://wiki.debian.org/SourcesList<br /><br />[3] About the /etc/resolv.=
conf File<br /><br />Link: https://docs.oracle.com/en/operating-systems/ora=
cle-linux/6/admin/about-etc-resolve.html<br /><br />[4] iSCSI: Introduction=
 and Steps to Configure iSCSI Initiator and Target<br /><br />Link: https:/=
/calsoftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-iscsi-init=
iator-target.html<br /><br />[5] How Do You Make an iSCSI Target in Synolog=
y?<br /><br />Link: https://linuxhint.com/make-iscsi-target-synology/#b6<br=
 /><br />Please also note that openssh-server was not installed. To install=
 it, run<br /><br /># apt install openssh-server<br /><br />Edit /etc/ssh/s=
shd_config<br /><br />and set<br /><br />PermitRootLogin yes<br /><br /># s=
ystemctl restart sshd<br /><br />Regards,<br /><br />Mr. Turritopsis Dohrni=
i Teo En Ming<br />Targeted Individual in Singapore<br />Blogs:<br />https:=
//tdtemcerts.blogspot.com<br />https://tdtemcerts.wordpress.com<br />

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/3b3e946f-0e51-4ab5-9bd9-25a779056816n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/3b3e946f-0e51-4ab5-9bd9-25a779056816n%40googlegroups.com</a>.=
<br />

------=_Part_2769_1727110784.1676043194298--

------=_Part_2768_189937641.1676043194298--
