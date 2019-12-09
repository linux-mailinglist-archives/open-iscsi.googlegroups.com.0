Return-Path: <open-iscsi+bncBDVIJONZ3YDRBCFKXPXQKGQEKAM6QJQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D1B117B3F
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 00:13:13 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id v126sf12987511ywf.7
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2019 15:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575933192; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAilEGvTTwJ4X6JaZlWRiWV8tBUz7vEeQrZd+sOQfRGMlmdpYWUEneRjntSrv8Zn4T
         8+lRpAdcZapTF7U97sSSC6zutDPiBauUFJX2GcwzCXPEJXo34BYfsvVuZySGUOCG7/sL
         vy+MCwiFdWtfSFztKa+nlSDH9FRdjYn7+9c0Dg5/hjdOByw9JxZ81YjQ5T8CapeYUHW7
         2Q4PjSSwnq5Q+vUkUl86FVy5RPxERiUZml1UO9XMrvniTFxG2cQim8yBl6Sey2YEz0eK
         IqsdKjLm/+YCSHHLIdgW2BjnxBXyFwXr+o8ZZaSbzUx1KIwJ4iqGrh6D7VnIiXmqcMaP
         +Ojg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=TRXRVnx0FPAudLHoJxVMwm6RClPjF1O7oXZz1py8Qjo=;
        b=Jxko73Ql0rWZE3Um0DqYIn9rqnx0GOFMmPFPPwaxX5fb32MHFeIesKFKrF3jBNR5o+
         /GsKCIkvkkbvyC4l7GWAO2cd6GHG3bl6AHU5OR31fx2Dnm7OJsB43gWxLe46/o6TCUay
         TZpty5bWCTGJBzJgmBrzRbn6NNP/EmuJpieCFgiiR+MV3RI8WmWZdE4Lxed4r9jtB6jQ
         7Xz6O7OJFxXEswi9LsvnoXIJvz/LB9vUzFtoZEbk89hB2/JF/MMtU7ScCrN+zfjIF16l
         2oNF5+O8ptcWCrKqYqB1aImzh+g5Ahy0c0s9bOf2sj/DyBkkGCz3yyUYia+ALFiw4qFR
         JgAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=bnN78Mx1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TRXRVnx0FPAudLHoJxVMwm6RClPjF1O7oXZz1py8Qjo=;
        b=SeOjNbxwIrVT+UN25Mu49UQJWCk5tIRE/vbUmQGyYbkvUfCD2c+tcAwgHO0KkAUImB
         4USf9NukKSc7DmxRsBKjLxfp/lpI93Rysi+f8xQrH3spCAW0Fjk3mEnpSaT25K7XAmZK
         iLHKhmo/iZfrUx4t1jimPx/00P/TEYN+gkajtHGKoHqN6TarHzMVNBoKlfD2F80QmwVC
         SBoYci1dvDQL5G8IzoLZ+BFSqL4Nda5APmZWS3ioaM5TL+rFyxcEw3LY0pduJCb9pQ7Q
         +MG6MBtP7y5i3J67Oi4PcpdBuz2aNGRjYtK9zNCpSq8OsVPOQWrvL4fD8wmBAelKLZB/
         V/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TRXRVnx0FPAudLHoJxVMwm6RClPjF1O7oXZz1py8Qjo=;
        b=uQ9BqJlfTzKIBCF3Nt8MjFxiGLdwCXJZR0J7HLwza+RBerVvRvX4bcImCRTwUo9rCL
         +4rUpWk4lOodU3Ee2YG4NaTYr3nKvlQOrwyCcJkxtddo7jd89yr3IRyCfbhAnFwlU1H2
         U9kaKaOVDqLcbCuFiQ1eGha4OaC/EGJ1nSaO9D2IMVdqaYDjF9Tt71C30I6qgjfQLPim
         /JMgOldp9vGrY72mzEvVrXN6iSwh86GuMb3fC0ZvxaIiBfD16bPKdXdoLHBAsOlNr8VS
         9wGfcXwiIcPpG0C62PuDjkXNFFPdZYmbg0iKdupIe9Y97qLi1xGoMTRIxG1ETa+vT6EA
         jd3Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW6yWvYPR+uLWVO9lAETA1IbvVwwbgQ+1anV3Rd8bitoBgXv4no
	XgnJrMXT8yusXQnsJpDhnv0=
X-Google-Smtp-Source: APXvYqzDTeh2XynW+O0+qE4/Mtop6PggQ8Jq3YRZy44aMjRgdfM/za0enqErvn6FqMytN5mtFb4XYA==
X-Received: by 2002:a25:7584:: with SMTP id q126mr13351847ybc.370.1575933192182;
        Mon, 09 Dec 2019 15:13:12 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:8843:: with SMTP id y64ls2258082ywf.5.gmail; Mon, 09 Dec
 2019 15:13:11 -0800 (PST)
X-Received: by 2002:a81:5303:: with SMTP id h3mr22968782ywb.267.1575933191745;
        Mon, 09 Dec 2019 15:13:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575933191; cv=none;
        d=google.com; s=arc-20160816;
        b=0a/WpUoM6mi7nyZmd4EPuckSnSrvQT9NzvGHjhhHDwl9hPwaZnWd+xk4NeUy6ESLvo
         xIHKi0ShrFv0zI6Jwu3YGkRIiJ5YFVvrY1z33bV8ll7yHPw3CwXc28zvIAXw1pZ+fF98
         SPdB74AGPmKS9FFUEn9M76F0G5UCllbiAmuLY5soo8EiICwkp7QNvKK4fQb/HBecO0fx
         CBOKemQau8RHkgLfqzX4l+t9f1bMi+9LhXMHVA/XnF8MFIibv/7a3DJCG3iFNY6SNV4E
         bvJzTO6NINGjVIIxJqmIkxVEHrL3up+oDqzdRsKTQ/3Lm5pNOvXbh5TIHH32CiOKV1az
         T5Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=XByPhQ/GK+1qe7eG/ANSprBhc5tw+oXQP23irQKqo9E=;
        b=BfPhlCPsNFrAiUasLNnDudY9R5NVCKWLgPQqV46m/wbvPeraRRi0ZtPw110Tw/t0BQ
         SwRvHZ0gJ+EDvMY7/fTiCn3zICg/2s5a7nohWDp9Auat281Iq8qhsHtQ5OXlpOb7V2qH
         LjTp7FvIdH3UTsj7aGPg/xbo1MBCVvBl5QGbWkZq2j0nMk9TR5YEZ55TxEj7Elqit6Y4
         GrBhkrGw3rSgTO7SkKxTSRSnQiTCvYgvejVKefpJ7hOnvoMdTYnymArMYMnZZgzxfyn/
         s+ZuUcIFr5WP/yLSNuRnB0A5Zzmer02L+o+wz8ctBZrmcABnqBSKJWFvus5/orzs7uyO
         TPUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=bnN78Mx1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id j7si65054ybo.5.2019.12.09.15.13.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 15:13:11 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB9N9N7v005846;
	Mon, 9 Dec 2019 23:13:10 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 2wrw4myjgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 09 Dec 2019 23:13:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB9N9UmS053443;
	Mon, 9 Dec 2019 23:11:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2wsv8arn0a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 09 Dec 2019 23:11:09 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xB9NB3qx010457;
	Mon, 9 Dec 2019 23:11:03 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 09 Dec 2019 15:11:02 -0800
To: "wubo \(T\)" <wubo40@huawei.com>
Cc: Lee Duncan <LDuncan@suse.com>, "cleech\@redhat.com" <cleech@redhat.com>,
        "jejb\@linux.ibm.com" <jejb@linux.ibm.com>,
        "martin.petersen\@oracle.com" <martin.petersen@oracle.com>,
        "open-iscsi\@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>,
        Mingfangsen <mingfangsen@huawei.com>,
        "liuzhiqiang \(I\)" <liuzhiqiang26@huawei.com>
Subject: Re: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
Date: Mon, 09 Dec 2019 18:11:00 -0500
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
	(wubo's message of "Wed, 20 Nov 2019 13:26:17 +0000")
Message-ID: <yq1o8whqem3.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=912
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912090182
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=976 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912090182
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=bnN78Mx1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


wubo,

> In iscsi_if_rx func, after receiving one request through
> iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to
> reply the request in do-loop.  If the return of iscsi_if_send_reply
> func return -EAGAIN all the time, one deadlock will occur.
>
> For example, a client only send msg without calling recvmsg func, then
> it will result in the watchdog soft lockup.  The details are given as
> follows,

> Signed-off-by: Bo Wu <wubo40@huawei.com>
> Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> Reviewed-by: Lee Duncan <LDuncan@suse.com>

I haven't seen a Reviewed-by: from Lee on this patch.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1o8whqem3.fsf%40oracle.com.
