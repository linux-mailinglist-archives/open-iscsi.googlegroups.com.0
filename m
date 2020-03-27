Return-Path: <open-iscsi+bncBDVIJONZ3YDRBSN46XZQKGQEG2A3E3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id EECEB194EAD
	for <lists+open-iscsi@lfdr.de>; Fri, 27 Mar 2020 03:00:42 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id v198sf6690398oia.15
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 19:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585274441; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPkjDbV/KU+dJ5iRVnOre77xOaPPAVGB3r0W65xhS7aRdOEME11JZA/s7ZEcxSv4Xt
         fp0iUcPNyyy2SCATAV+LSMJP6PiDulVt/j04bj3uqIegXLvugPmMgaIaEklCEJNqveo8
         +X7aZMXjwIcNxa3dzD3M/iUkeQp+STc5AXSP9eqOKaBUx/RXX2ecrTENXR5B0vl6JNNK
         OvIsfUVMH9suNCeoXwKEyYWnOYbhaYWxcS1EHOrAwCxPzXtR98HS8yx+5p4SrLDXzE+D
         BswRHfFQE0XBa/zI+ETyfcooaNaH0apZACafF2KbNz6xRWcw4Ri9qG/SlvIRDWdmrluH
         /tvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=4qmFAvV29M66X4PuIcMK0lKEbvEGTj9BbfgUBTkqIto=;
        b=yNfj6UEBTQYEaZy+C7ykTWQdFYpW5L7gpt7T1xMp4APWPSXOJbK4OPZ+UpkIxQZV6M
         EYsivAU1++h6CR1Rt4Bw0vZ7yKru7HBmzxBOlvJd1/OcSPD+xazVnJk9DCNpHBi9LeLs
         qNNTny2V8KvShvAzAlduS1tC6hf1qPf6LtQt0TU8gTTHpoghCl7q0rSourdwAQMjZK8y
         zxuO89ToMLLw0OPEEIRuU2Y+OEwijUTfsr0kmaHj2eK3fiRv/33frO4nMF9KxPZBQwp1
         wOYBco7kYnZZXeqYLSEEskYsGvkixtY+a2WJR6/HiYhzTczdKLPAZCDYdn0JolxnFZIB
         YC6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="BTcXxZa/";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4qmFAvV29M66X4PuIcMK0lKEbvEGTj9BbfgUBTkqIto=;
        b=KvRL6zRsNIO+8ylYDcpDzhnzw48xmKcHyFbPI9WfMGMMxTADzdCmqKqaggXEGqrt4A
         cVbQxPEWJu+8c4gfX5JtQsq/ecgdNWzvtIw7JRo/De8NQp0Yvzx20+cU8RGzQFATSUDA
         ge0QoyOCTusqKjy4JoHZ0CDQi7zPPiBib1LRbIX8DawO5pnzwv9vd7RQwScHFBGuByHS
         xYqLko1Z3Truf56b+8MJ+VMmKbqNktLDRqYws07+2wZQmIFvNWBcla7WA3ozaRzU0LbY
         lNFIBg3BcG0yskyaLvJXoJbfrn4NDqOtsSWpl6nPds9ec8HmEBZQhLhW7eq5Ijf8j4yY
         RQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4qmFAvV29M66X4PuIcMK0lKEbvEGTj9BbfgUBTkqIto=;
        b=WGqq4tfV7R4hgUfBu16bQRZNAThSrttPQ2721JBAMxQa/z66FuvPKmLcFGTrfkklp9
         l277+tf6LwpdCK/ituBWjTDDdCMAIdw85G1KIHKZpcrQndO6IbQlv4WG4Vt3dpVYf3E2
         WuWEtdfglXSD6m+sCW6gsY7sNiVA9EzSdliaKHk3lIQoY+bvmRAIgHAHWnco/c1H3ipY
         RBMgs+U0BiYPJuUceJ9/g/h6BnhZL/BUW7hO2Ukd+he/NuWCdXDQEtq+v9UN27xd1uer
         qe60vt8/gMrE3bbn2xCp1CrndqLO7NRbKO0zIv+tcJWSdhmzyiYNvvY6zhs6vPFozpvm
         TlKA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ38p7fRweBLAddWcMbEYBiGl8gkIWN59AoGtTTDUrdCP/sIDsWR
	IUG+lC9BUo2swpAsHW7DBl0=
X-Google-Smtp-Source: ADFU+vtfS6dT1RyRM6WfrwHIlHNjzm2hnJ44kPaDOe0u4RoyhZ6O3Ksz646rXMv1XW3oSAwifOuWUQ==
X-Received: by 2002:aca:849:: with SMTP id 70mr2536142oii.30.1585274441529;
        Thu, 26 Mar 2020 19:00:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls2707042otm.4.gmail; Thu, 26 Mar
 2020 19:00:41 -0700 (PDT)
X-Received: by 2002:a9d:1a3:: with SMTP id e32mr1934479ote.206.1585274441119;
        Thu, 26 Mar 2020 19:00:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585274441; cv=none;
        d=google.com; s=arc-20160816;
        b=FExcX2c0/LKr5hvexdcP+r3KUFOYbuogzP0QPE2tQHdFIueUUd7zVlRrOhQYsRqxkV
         LC7mnLR56G3swvFgpEKE/xmAptVQvbg6gYwCIVEb6aoFHPkIZM6XhmCQkKzL9TgKQS1p
         fCaIkHCoPQpE4sO3wksZV3egSBh6i0hGLgsOPRZ1Bot1pH9d3bbE9JvDSno8J4uYyzg7
         OQ842rPgDXDaEQIjKL9ie8j2dDHKo8GmuwHUjer4HN7UoAqiVrDLKaUJ2m2dWANNm4yz
         Jbm3yvbPs4t+bXUaYSzdP2bzBmHndB42iZXXunsne00zTXIHBzBK+tdl5ibI3uTDyZHa
         loVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=6+loAL8FXEKnUok7C8nHVuCjib/Jl9TWyDWgWbbn35g=;
        b=L1wE/bg5oIMDSRPUNmbv0k3d4Q8kccrVM+zfQflePLn/qbzRGoLStB6MFRFH4OaMg4
         ShpMAZiKn376Hb+wCktg7CE1juItSmF4K8yrFBEtbhtBp66kmR1P+p7ktq2VPdvObv0P
         cNrsRkxagIJ2tP45NH2IB/+vezVYQjBKNGoqjj/tGgqm/XLcGkRpPspKLiTsz50tLHaW
         7T4LwvSMiAAQZuWjCuC8PCzP5CdEYXvOFJmURubmwylxEHMU3V5RKl+4rcJRltvGRVZb
         OT+fmiWeit48Mxf9OPpzMOt37mTQHH4yTbY1F5I4DuIZi631Fz8d7Z5N8ea5l/8YYYTF
         TuBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="BTcXxZa/";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id d188si350135oig.0.2020.03.26.19.00.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 19:00:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02R1xR6E185099;
	Fri, 27 Mar 2020 02:00:35 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 2ywavmjwmc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Mar 2020 02:00:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02R1vsJ2088300;
	Fri, 27 Mar 2020 02:00:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 3003gmyrg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Mar 2020 02:00:34 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02R20VP7011696;
	Fri, 27 Mar 2020 02:00:31 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 26 Mar 2020 19:00:30 -0700
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, bvanassche@acm.org, open-iscsi@googlegroups.com,
        cleech@redhat.com, martin.petersen@oracle.com,
        linux-scsi@vger.kernel.org, kernel@collabora.com,
        Khazhismel Kumykov <khazhy@google.com>, Junho Ryu <jayr@google.com>
Subject: Re: [PATCH RESEND v4] iscsi: Report connection state on sysfs
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200317233422.532961-1-krisman@collabora.com>
Date: Thu, 26 Mar 2020 22:00:27 -0400
In-Reply-To: <20200317233422.532961-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Tue, 17 Mar 2020 19:34:22 -0400")
Message-ID: <yq1369uftfo.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 phishscore=0 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003270014
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1011 impostorscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003270014
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="BTcXxZa/";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Gabriel,

> If an iSCSI connection happens to fail while the daemon isn't running
> (due to a crash or for another reason), the kernel failure report is
> not received.  When the daemon restarts, there is insufficient kernel
> state in sysfs for it to know that this happened.  open-iscsi tries to
> reopen every connection, but on different initiators, we'd like to
> know which connections have failed.

Applied to 5.7/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1369uftfo.fsf%40oracle.com.
