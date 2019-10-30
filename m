Return-Path: <open-iscsi+bncBDO7B5X3UIBBB3ME4XWQKGQE2PTD3PI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD21E9774
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 08:57:34 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id o204sf980373ywc.12
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 00:57:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572422253; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eow22PU+s9V6NKZEAQ9U6MdKAe6C1yhCVQN91gavIqCO63i3ssFW1j7Zf8o33quAC6
         vqcwWyMMTt+IPmj25xOcKom67CfvcJ0C77FDnTkZR8zq5BaVsi6oUHGDLKpSAFlix1Ng
         vHllHOq4RCfgZ1YIBXMwhQSUL9bEgON9UEoGnuesSMpjq6SNgjudIW814jZ4t0rI8fMm
         VS9NQlcYtFKNlVC+YMbwh0t4MTtQcQXmdJHtiMEr0h8t0w/0qX3L1zzI/uzkO0l3taZl
         ugy7abAL8/6nv2HwikTJPqpCF2UeTzAlbJeG497/cHr/bO7vnv3rhGwHm+FFp7+996dg
         4CxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=bO1oYYls53tHrDgzDsFrff3nY945G9zbLnQMPuZ/QBo=;
        b=rSwTz/1/HICm02ipowhb3QXe9pIYCX2Mixy5LposYAEQZ2Wf8h8kK3vrE5y5XE8Z00
         QTwKJLW0YEUde5OhlWMXOcHiO5LxVR7swshhK4VbL5QRSA9eiOpZpRRuoD8Akpcu2AAR
         j+4BNW0B+U2h/Mcw8dGC2ASrE2m6wynxevoCEM2IW6OwRZSv82uwrxwElfNOx/l9PIe/
         agv5ti1ShLx0kYO1lubv+KVWgBbnXJcnAUipUGPkeYrlkNfW5zo8AmQMpIosnPkyKjuQ
         /DUi034Ae3ncUZMz1DmYX2HluFzqkhemSK0jaJKnraekwZjZk07h8+W1OOff8fEijMKP
         XN2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bO1oYYls53tHrDgzDsFrff3nY945G9zbLnQMPuZ/QBo=;
        b=Qar6/hqWSK79xwWW49fEhdOaAgNo0VM6PRpaJPzzjKqbptxaKkjGo3cDxvCkBA1Gt+
         NojnJlcSd1njpe7+Yo+sSCwdzV40ngl26IaroqsO13ZuEjw0c5zj7h2tZPGcn69QUR47
         qQ8X7JCNIMbzHdv9rr3hSjvbcmH/lHwAFjJlpGRfyyNcbWd6BB1J3G7Vv+kGVIHrdGTY
         8ESXXxwPb5sechNJRF+cuPqh/VGOgGqEJCtJvdClyrKoW2tLiM3xIsr1OBaDR3i+JHST
         g+ekE6AkCZTRSg9HUolGLO4Qvll3ojSfIqeJz/uIyQF53CN6HOcYl5Ss2Bf51yHel+wL
         IrKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bO1oYYls53tHrDgzDsFrff3nY945G9zbLnQMPuZ/QBo=;
        b=H+WfG7UPp+aPUCuQGkBIZPCbr3K5PYaHQ6jEbhGqDQ/UFeXLcIgLn3ko/+DTntbViA
         znh292gyJgJ5zJwTDwjRISPe5VFcfMuDIGA9CjiPo7RKOBmJ1ZHgMVjRIEqj2v1qfVbk
         Uw/QE59hf8bZRenDeSMPpXtd9nnWhiRXosQXq7HD8MZiDPl7rrPXzl70xTIsfopYRoC3
         u3e+bwPaQv/0bgQzJ9oz2uTeHjLrlBxQ3gpoPw683kRD+pFTL+W8cXMjG3vWxgwPH5QD
         yQGQW0N2wY5+klH0SfNq/ZQVDtRQQzo+PnF0FJ01bFAuEolkzxJ7zkEX0xjs0bxd0klu
         0gWg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUGMKXLvJ1Y8eWdmrZMgwpu8i96XZ0vfXSKO7X9TbePldgknOXU
	DeztBYameJTS4dvAc3q+CqU=
X-Google-Smtp-Source: APXvYqxzIUOqZoR3/vKSvt/5wcWJ0QWc0B93gFjYig1J3PaXWxmA6iadT4QQa0p9F1gQQiNm6HWxJQ==
X-Received: by 2002:a25:b5c9:: with SMTP id d9mr1441782ybg.321.1572422253383;
        Wed, 30 Oct 2019 00:57:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d0d7:: with SMTP id h206ls250377ybg.12.gmail; Wed, 30
 Oct 2019 00:57:32 -0700 (PDT)
X-Received: by 2002:a25:4643:: with SMTP id t64mr2396351yba.498.1572422252898;
        Wed, 30 Oct 2019 00:57:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572422252; cv=none;
        d=google.com; s=arc-20160816;
        b=DBW1fcmkJMwRPOB1pSHJ+nILHMtI+TmQ+uZ/f9Bm5T1hudaIUy9YUof4KHyLkGkTGH
         L/ESzl2wmTD6VfKoIu1KsQc3CZ6l36MvOdgfUWSgfVw3ItQhwh0YRv7+3ErEE6pz6KbC
         QlvKYOfiyw/KMYvjVYeLzLWYH8rtw1Cb73ThroVRLFs9eRkab3QgNTK2jdG9tw8dTExt
         ZfS1fJEXTQZCTLuYp639qNqGsZx/O2saxqBtu1yyy8kUAzEgPldPjEMqA9cXk0LB4HpR
         7x5pZicTPD9DCv9CfsTxda9zThvEPwTDqoys3OTu0CVa+tpdX05lUKPirUS19EwJk6rZ
         MlbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=2gAjlULDesI4cltSDZLIUJAY2mSLHXt1beekFtC/YdM=;
        b=fVVFh22RfnfKTQB1iRD7OLwtu5QQrf7vD8srLpjGBn0ti2enSNSavIZPw8f/BqInNT
         a26PpjaE8bdTj0i8dFhlVzy1mkbjW/fJ0vPs0rEIUFAHCT3LLw/GhFVLW1llnhzplD6s
         CHkpYwIpbehfJf1W3aU6/rYbgYbSpf6y8FBSb2jE1nA0DlYObwUr0CXkXGeXIJw7hcC8
         GXltryB2ny4uu+BsBeknUtMyuK1hC3OyCnS2+S4IxJzFtpJUotBZfyAxLdSNI3u80mtY
         fuvfi12OWsJ0NDGEpWTw533yB+4CVZF7Wx36ve3DbkSqUtVB05JPgDRsr+6hYXWwr5BX
         QuYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id a1si112042ywh.3.2019.10.30.00.57.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 00:57:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from DGGEML401-HUB.china.huawei.com (unknown [172.30.72.56])
	by Forcepoint Email with ESMTP id 96AD06923E5053B4AAD1;
	Wed, 30 Oct 2019 15:56:59 +0800 (CST)
Received: from DGGEML505-MBS.china.huawei.com ([169.254.11.138]) by
 DGGEML401-HUB.china.huawei.com ([fe80::89ed:853e:30a9:2a79%31]) with mapi id
 14.03.0439.000; Wed, 30 Oct 2019 15:56:53 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: "lduncan@suse.com" <lduncan@suse.com>, "cleech@redhat.com"
	<cleech@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: [PATCH v2] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: [PATCH v2] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWO9lESg1/320hTRWyI93hubYXiRQAAM+TA
Date: Wed, 30 Oct 2019 07:56:52 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE@dggeml505-mbs.china.huawei.com>
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
 (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as
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

From: Bo Wu <wubo40@huawei.com>

In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to reply the request in do-loop. If the return of iscsi_if_send_reply func fails all the time, one deadloop will occur.
 
For example, a client only send msg without calling recvmsg func, then it will result in the watchdog soft lockup. 
The details are given as follows,

Details of the special case which can cause deadloop:

sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI); retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof(src_addr); while (1) { 
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

Here, we add one limit of retry times in do-loop to avoid the deadloop.

Signed-off-by: Bo Wu <wubo40@huawei.com>
Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Suggested-by: Lee Duncan <LDuncan@suse.com>

---
 drivers/scsi/scsi_transport_iscsi.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 417b868d8735..85482bcfc727 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -24,6 +24,8 @@
 
 #define ISCSI_TRANSPORT_VERSION "2.0-870"
 
+#define ISCSI_SEND_MAX_ALLOWED  10
+
 #define CREATE_TRACE_POINTS
 #include <trace/events/iscsi.h>
 
@@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
 		struct nlmsghdr	*nlh;
 		struct iscsi_uevent *ev;
 		uint32_t group;
+		int retries = ISCSI_SEND_MAX_ALLOWED;
 
 		nlh = nlmsg_hdr(skb);
 		if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) || @@ -3710,6 +3713,16 @@ iscsi_if_rx(struct sk_buff *skb)
 				break;
 			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
 				break;
+			/*
+			 * special case for sending reply failed too many times,
+			 * on error - fall through.
+			 */
+			if (--retries < 0) {
+				printk(KERN_ERR "Send reply failed too many times. "
+				       "Max supported retries %u\n", ISCSI_SEND_MAX_ALLOWED);
+				break;
+			}
+
 			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
 						  ev, sizeof(*ev));
 		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
--
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE%40dggeml505-mbs.china.huawei.com.
