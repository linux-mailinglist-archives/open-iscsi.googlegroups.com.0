Return-Path: <open-iscsi+bncBCJJNW4DQMPBBDEC5SGAMGQERERIZOY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D13B458801
	for <lists+open-iscsi@lfdr.de>; Mon, 22 Nov 2021 03:31:42 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id kl17-20020a056214519100b003ba5b03606fsf15392272qvb.0
        for <lists+open-iscsi@lfdr.de>; Sun, 21 Nov 2021 18:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4w/c+e2wZWSuseAPIFU0/H/0UlFbUMMH6KASh2ueTqU=;
        b=sMwCkQ3clkvrIV8u/dTrtk0C3hXknaRtOsYtJFAQqBLmiyJHAnHTS6f7UDUihvJr2G
         Dd1TpAdvBb2A/c08+vpZeXBnSg9g9aMkVHsdx8LjUlPoDC3QZCbNopMMeTQTNlB2r6S5
         MQNb+0iEMjQQ4aYko/XUFkQ8nNJsdRM830FfD4Pks31A+lYpuHQtq0rVyzqGfqbCX8YL
         ljsJJqQ+FYDkaXUZaXfUj5KB8W73reatLV/S7ZvsCSKaQCcyjMocsRBTYFnIFXTpJxan
         Qo0w+NqLODY8rptXqtFuoRSv8z2re52xG+gNF4cZvIhadpTYT/HkCRn+FM0BSRHjdCmP
         Vdkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4w/c+e2wZWSuseAPIFU0/H/0UlFbUMMH6KASh2ueTqU=;
        b=HkbEbzSHRqbbCf3uU1EwJDdYHS9BZCV17HIo4ukjWkygLm97Ph5kMbGGAIGZzRR4Bc
         DTPryEvix9rl85iBAuzn9RasGMOi8+ibWVRg0mcQzPH+i08NrRroXpG8UBjYk3i25TkP
         eAKWRzPuH2IZYDD9e59lqouIbosWAXcB1nF/XqqFPIyZpROH8mQS1BD+yvByFOdB93Wp
         t/T4HNfeD+vA6qDpjScdaZ086RsaQpesmWDBSLkyXOW7636JWTKyFkMZ6wGMZyym1os5
         gWAzwpkK9wqoMeMDJkNy9dsmxfWe89igaOXDWGwg6tl/4Y4UeN4mSsrExshFYGGKxZHh
         zYiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4w/c+e2wZWSuseAPIFU0/H/0UlFbUMMH6KASh2ueTqU=;
        b=4qnANhy/USY/E37VW0tNA7ha1E8OCjOcYUlJ52Gg3z0xZ9/DhctoZC9E+Psckjoa87
         7u/eDVkQ6urVIyK+6kP7DK1mq21ZYwUmWCUuutX/Udyzdhf5RVHmU2SM6/wrOpB47cTp
         a60539fzk6UhAm0A4jCVmxGnyR7aeG7yIsUTRNQu6t+htNYRTDnCjiaGt7jMgM0SSl9M
         cN/NqRl2YJdcwc60bkps8eLPMvwFnZTyS70gEXz/w9Regij5n0sIKJSpbNlDo1rtN4TG
         z6CZRmFlnW3kT73U7Ccuz1zC097EeN54EZz7tpIt/KI0W4W/BJOswscEYXyDkU6tWtfU
         wA8w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530UbmilD83XZOqOAWMZmcuqrkVq2m4JE7jIERiK9VVugpCTZWSu
	6fluoP4jwq82Ixe8KeREw/4=
X-Google-Smtp-Source: ABdhPJxdEpFlhi6TlOOtZbvmyNkFhDNimaYJo6DNWy7eHuRj15YKuq9edKTpbYEkA3OpAx1KvHZV9Q==
X-Received: by 2002:ae9:e30b:: with SMTP id v11mr46589331qkf.329.1637548300929;
        Sun, 21 Nov 2021 18:31:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5746:: with SMTP id 6ls3119954qtx.9.gmail; Sun, 21 Nov
 2021 18:31:40 -0800 (PST)
X-Received: by 2002:a05:622a:11d0:: with SMTP id n16mr27417391qtk.111.1637548300269;
        Sun, 21 Nov 2021 18:31:40 -0800 (PST)
Date: Sun, 21 Nov 2021 18:31:39 -0800 (PST)
From: Alexis Oosterhoff <alexisoost@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1b70c5d5-bb56-4f35-948b-1a2cbde569ban@googlegroups.com>
Subject: iSCSI initiator setting max_sectors_kb=4 when target
 optimal_io_size=4096
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1140_1777237875.1637548299493"
X-Original-Sender: alexisoost@gmail.com
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

------=_Part_1140_1777237875.1637548299493
Content-Type: multipart/alternative; 
	boundary="----=_Part_1141_1314410865.1637548299493"

------=_Part_1141_1314410865.1637548299493
Content-Type: text/plain; charset="UTF-8"

Hi,

Looking into whether this is a bug, or an expect behavior with kernel 4.18+

RHEL 8.4 on AWS r5.xlarge hardware type, attaching nvme disks, observing 
the nvme device is configuring optimal_io_size to 4KB
i.e.
/sys/devices/pci0000:00/0000:00:1c.0/nvme/nvme4/nvme4n1/queue/optimal_io_size 
4096

When attaching this device remotely using Linux-IO, the initiator device is 
using the target's 'optimal_io_size' to set the max_sectors_kb. 
i.e.
/sys/devices/platform/host1/session8/target1:0:0/1:0:0:0/block/sdb/queue/max_sectors_kb 
4

This does not seem to be correct behavior. optimal_io_size and 
max_sectors_kb should not be directly related.  Do not observe this 
behavior with RHEL7.

target:
 - RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64
initiator: 
 - RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64
 - iscsi-initiator-utils-iscsiuio-6.2.1.2-1.gita8fcb37.el8.x86_64
 - iscsi-initiator-utils-6.2.1.2-1.gita8fcb37.el8.x86_64


Thanks,

Alexis.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1b70c5d5-bb56-4f35-948b-1a2cbde569ban%40googlegroups.com.

------=_Part_1141_1314410865.1637548299493
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>Looking into whether this is a bug, or an expect beh=
avior with kernel 4.18+</div><div><br></div><div><div>RHEL 8.4 on AWS r5.xl=
arge hardware type, attaching nvme disks, observing the nvme device is conf=
iguring optimal_io_size to 4KB</div><div>i.e.</div><div>/sys/devices/pci000=
0:00/0000:00:1c.0/nvme/nvme4/nvme4n1/queue/optimal_io_size 4096</div><div><=
br></div><div>When attaching this device remotely using Linux-IO, the initi=
ator device is using the target's 'optimal_io_size' to set the max_sectors_=
kb.&nbsp;</div><div>i.e.</div><div>/sys/devices/platform/host1/session8/tar=
get1:0:0/1:0:0:0/block/sdb/queue/max_sectors_kb 4</div><div><br></div><div>=
This does not seem to be correct behavior. optimal_io_size and max_sectors_=
kb should not be directly related.&nbsp; Do not observe this behavior with =
RHEL7.<br></div></div><div><br></div><div><div>target:</div><div>&nbsp;- RH=
EL 8.4, 4.18.0-305.12.1.el8_4.x86_64</div><div>initiator:&nbsp;</div><div>&=
nbsp;- RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64</div><div>&nbsp;- iscsi-initi=
ator-utils-iscsiuio-6.2.1.2-1.gita8fcb37.el8.x86_64</div><div>&nbsp;- iscsi=
-initiator-utils-6.2.1.2-1.gita8fcb37.el8.x86_64</div></div><div><br></div>=
<div><br></div><div>Thanks,</div><div><br></div><div>Alexis.</div><div><br>=
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1b70c5d5-bb56-4f35-948b-1a2cbde569ban%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/1b70c5d5-bb56-4f35-948b-1a2cbde569ban%40googlegroups.com</a>.=
<br />

------=_Part_1141_1314410865.1637548299493--

------=_Part_1140_1777237875.1637548299493--
