Return-Path: <open-iscsi+bncBDO7B5X3UIBBBCX62TXAKGQEHM4WRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D2D103B52
	for <lists+open-iscsi@lfdr.de>; Wed, 20 Nov 2019 14:26:34 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id x16sf7349747lfe.19
        for <lists+open-iscsi@lfdr.de>; Wed, 20 Nov 2019 05:26:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574256394; cv=pass;
        d=google.com; s=arc-20160816;
        b=wLaKu/kr/XtP2mrixIzFjgZ9rmfQeqMjOF3OOGDpaV5ABKwf/DvnJbhabNDW/yhPnZ
         KOTNthtk3WSN28nzj4+PPH+YmqRW2IiAqQn5GMiJ4DbPTCIsCvs+eOo8bU64hY/IGLUx
         c/CIvZuDYvCM3mhLmsuvGbFwTJs3vqOuSJxIimnzNK1kynTo6xrZcV8PPQLLO6x2cCRE
         NIeZR9vX23FHzI37iJJxXtse/aDFvIBDWWxSsraQ48OeA0iSETrnlWOVKjkZr7tHOky+
         XbygMxW0cJRK2048O0aUfM+sUOp4ydR4h9+4TzjaehXmmarslOFKk+QMoMM6eCl3Es31
         jX6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=OO3ySbtDa85UwxG+7YT2l3vdvnKzOnBet4PRGv1Dp9Y=;
        b=cUwYwS1WMh4W38fWd1BAzYY0Uvz0/nn9U1cjBJvpsZ6opAw6KFcsr9YhmkAkEKyjVG
         5MbUzUt5HVkAYaJis/YPENV93NP1l2MIGUFZxhS52HOEJpG6x+2JPf8uFV0qUXdwYxG8
         5c9Dcx4O92c4/oJb5dSOZ3hXaSwxnSSXcBA5KHYPp8kUxRh0EIM2vyVk+t3Cjpcct3sD
         saPmRbEcpQYjEd6NDl9PuikciGq8RNpxq66SkGYyFxlwGSccZmMvEQKl8KKme9V8t+C9
         t+34sv6GwU4dfJw9TGAfV3Twj7l8hlEEKl6CGPDEjiSOcCGdj8XKVq7ErYfp3pfQSTsZ
         wkQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OO3ySbtDa85UwxG+7YT2l3vdvnKzOnBet4PRGv1Dp9Y=;
        b=AGN2xDr6rT0FNewsT7TBqAMXEiFlKYnDh++CfmM1RjvR2A4zswbBPiRUOYhnKGi3jY
         oKNC//Eoj+7WWJGd9LFu7hNK/n6rimsaaj9To18+QZol1m3UOGt2SGyUY0t2uTcXt71B
         G/1gQBujpnGMLsrY7iE2ELtA0j0M7Feaxi6kTD2sUSdwgpCkzjGSYtUmkb7V/GU/Rj8x
         JkvcAIE5lxsV4XNe8oh71W2hlywGrFSQhnm1QYUvL6SXNxWU0rhjrURlMYfNkma8472j
         kauZwNPuFk48gWU0uEdbTG4VB7A6Oi2CUVFzdR2YH24PaU7TNDIS3g/Hh/yD5mzLGNiA
         c5Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OO3ySbtDa85UwxG+7YT2l3vdvnKzOnBet4PRGv1Dp9Y=;
        b=OJcZZLpYjAZQxpNiBRdABr4MgjhIF/zYSrVAzMGjhqL2wpmPwbDgPxboJsFgYkfwAj
         ymA2//HIJ7Yd5ck7TodibuLU7yP/I9V5HsLW8xkiYQXQlU82ABF1jGYBDTVoc4d4KK/m
         R2PaTilOFBTPTfB0rD4qtV+IS32919k1aTK5Y8+/9ts+iZxLAd02QyBqFOUduBqSolnR
         KTRZtIxDy8E+QzvWwaqLAGZcl26a69iX6ZTlRfMm2OK/MuN/C7nx/yFAOgVDB2M7u2nL
         9FAAnP+Z2w5GcPB7XAvELYfe6ZZlKepK7DnOFRhu7uwoouUZcTMQnv2wPriaE10bzlB8
         6Ldw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUzvKglOBjsu7VZ2UKMbnRiCVNdTJOCz23tT5dPWa5OsPoJG2dh
	nu06XxGcGIoFVC3YSZnzak8=
X-Google-Smtp-Source: APXvYqxPVp1DtrP86na3GVTVsnomXz+UI/RbqGPR91iX4KBZPmMpsAZIJrFKBq4YNlO0SQNecMnOYw==
X-Received: by 2002:a19:74a:: with SMTP id 71mr1734625lfh.127.1574256394150;
        Wed, 20 Nov 2019 05:26:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:ee08:: with SMTP id g8ls226432lfb.0.gmail; Wed, 20 Nov
 2019 05:26:33 -0800 (PST)
X-Received: by 2002:a19:790c:: with SMTP id u12mr2991742lfc.183.1574256393603;
        Wed, 20 Nov 2019 05:26:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574256393; cv=none;
        d=google.com; s=arc-20160816;
        b=sRRlHHcvig5nCOY5GhQR9gMI3/RZlpYzN4dcbCBhTJJkMSc8f7dZ3lIo/8XFy0rWaL
         b+O4RCQ168r0gA4z5F60E4bn8G5Cbdri36dJdgULKBUIh4uggYtK9pCdsYko1zIHM9xd
         QofKQ3VE9mjTxD+uOHDHr0l7oVj3F9/6dOBlgMyfeImBtpyQRFbbIt4DugWV86n02HE3
         esMbr5iMGwhqXIZSp6/+yF5dR4QAtLs9AFDY+EY+sk61UQr/H6d/sWE8KZJgXONaFQjx
         JFWl0dLitzBClJFsPorrVo8kGjO4Gj7O9mU+o1A0Am6ksEB0PulkWIE4Pors7bn5PwO9
         cCxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=Xa9x9gyj30GcOPW7B77Wvtp5T3qiSLXQ8oVO82O2JLw=;
        b=cvZD/IqW4aqaPuAF5M6nkwR1fWT8CJLPzzCe3iJGm9HaAPUSGbpLo87MmeYgq7+iUY
         /YgwZyTHwnRDDN5KowBdKNUBNkXI9DcPbmrj7dcp/QgtetZTDWQuch/KBWm6LiHQiUNR
         6aOOTmdfXXySrzPONAW2FO3uUcOn+9TDbVUCYaMTMO7zKc/V1gsinEORe7SK9mj7LJ6H
         K8+ULZ0EvQ0rQLtgL+lQUTkp1pq3eQAXV7WqSZOYppfDsKhBSRajHOexQ5SdfTp6FrUs
         ggMjCT1fEhSxllole0CtY1q+LrEMBgTqwDsCbRv9aIVusuHbsSssM8MoYAtmM5BV4GmC
         WQrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id h21si1590160lja.5.2019.11.20.05.26.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 05:26:32 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from DGGEML404-HUB.china.huawei.com (unknown [172.30.72.53])
	by Forcepoint Email with ESMTP id 4738F8727DE762286877;
	Wed, 20 Nov 2019 21:26:28 +0800 (CST)
Received: from DGGEML505-MBX.china.huawei.com ([169.254.12.31]) by
 DGGEML404-HUB.china.huawei.com ([fe80::b177:a243:7a69:5ab8%31]) with mapi id
 14.03.0439.000; Wed, 20 Nov 2019 21:26:18 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: Lee Duncan <LDuncan@suse.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
Thread-Topic: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
Thread-Index: AdWfpPEqf8P620ByTC6DVQFqYQ7mDQ==
Date: Wed, 20 Nov 2019 13:26:17 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.221.252]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg func,
iscsi_if_send_reply will be called to try to reply the request in do-loop. 
If the return of iscsi_if_send_reply func return -EAGAIN all the time, one deadlock will occur.

For example, a client only send msg without calling recvmsg func, then it will result in the watchdog soft lockup. 
The details are given as follows,

Details of the special case which can cause deadlock:

sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI); 
retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof(src_addr);
while (1) { 
         state_msg = sendmsg(sock_fd, &msg, 0); 
         //Note: recvmsg(sock_fd, &msg, 0) is not processed here.
}        
close(sock_fd); 

watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305] Sample time: 4000897528 ns(HZ: 250) Sample stat: 
curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle: 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140, st: 0
deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq: 242870, st: 0 Sample softirq:
         TIMER:        992
         SCHED:          8
Sample irqstat:
         irq    2: delta       1003, curr:    3103802, arch_timer
CPU: 7 PID: 253305 Comm: netlink_test Kdump: loaded Tainted: G           OE     
Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
pstate: 40400005 (nZcv daif +PAN -UAO)
pc : __alloc_skb+0x104/0x1b0
lr : __alloc_skb+0x9c/0x1b0
sp : ffff000033603a30
x29: ffff000033603a30 x28: 00000000000002dd
x27: ffff800b34ced810 x26: ffff800ba7569f00
x25: 00000000ffffffff x24: 0000000000000000
x23: ffff800f7c43f600 x22: 0000000000480020
x21: ffff0000091d9000 x20: ffff800b34eff200
x19: ffff800ba7569f00 x18: 0000000000000000
x17: 0000000000000000 x16: 0000000000000000
x15: 0000000000000000 x14: 0001000101000100
x13: 0000000101010000 x12: 0101000001010100
x11: 0001010101010001 x10: 00000000000002dd
x9 : ffff000033603d58 x8 : ffff800b34eff400
x7 : ffff800ba7569200 x6 : ffff800b34eff400
x5 : 0000000000000000 x4 : 00000000ffffffff
x3 : 0000000000000000 x2 : 0000000000000001
x1 : ffff800b34eff2c0 x0 : 0000000000000300 Call trace:
__alloc_skb+0x104/0x1b0
iscsi_if_rx+0x144/0x12bc [scsi_transport_iscsi]
netlink_unicast+0x1e0/0x258
netlink_sendmsg+0x310/0x378
sock_sendmsg+0x4c/0x70
sock_write_iter+0x90/0xf0
__vfs_write+0x11c/0x190
vfs_write+0xac/0x1c0
ksys_write+0x6c/0xd8
__arm64_sys_write+0x24/0x30
el0_svc_common+0x78/0x130
el0_svc_handler+0x38/0x78
el0_svc+0x8/0xc

Here, we add one limit of retry times in do-loop to avoid the deadlock.

V4: 
	- modify the patch subject, no code change.

V3:  
	- replace the error with warning as suggested by Ulrich 

V2:  
	- add some debug kernel message as suggested by Lee Duncan

Signed-off-by: Bo Wu <wubo40@huawei.com>
Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Reviewed-by: Lee Duncan <LDuncan@suse.com>
---
drivers/scsi/scsi_transport_iscsi.c | 7 +++++++
1 file changed, 7 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 417b868d8735..ed8d9709b9b9 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -24,6 +24,8 @@

 #define ISCSI_TRANSPORT_VERSION "2.0-870"

+#define ISCSI_SEND_MAX_ALLOWED  10
+
#define CREATE_TRACE_POINTS
#include <trace/events/iscsi.h>

@@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
                struct nlmsghdr       *nlh;
                struct iscsi_uevent *ev;
                uint32_t group;
+                int retries = ISCSI_SEND_MAX_ALLOWED;

                 nlh = nlmsg_hdr(skb);
                if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
@@ -3712,6 +3715,10 @@ iscsi_if_rx(struct sk_buff *skb)
                                   break;
                          err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
                                                        ev, sizeof(*ev));
+                          if (err == -EAGAIN && --retries < 0) {
+                                   printk(KERN_WARNING "Send reply failed, error %d\n", err);
+                                   break;
+                          }
                } while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
                skb_pull(skb, rlen);
       }
--
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2%40dggeml505-mbx.china.huawei.com.
