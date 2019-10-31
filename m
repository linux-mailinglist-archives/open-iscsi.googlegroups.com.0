Return-Path: <open-iscsi+bncBDO7B5X3UIBBB2PY5HWQKGQEWERODLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C305EAA97
	for <lists+open-iscsi@lfdr.de>; Thu, 31 Oct 2019 07:17:15 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id r23sf3862900iot.0
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 23:17:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572502634; cv=pass;
        d=google.com; s=arc-20160816;
        b=GLrJjq7V61uMFwOtIKJkznJG41FqSS7D/cB1hVf2gT3g9DnstFWpg3bXe8vbULQngu
         WrqqNDybzQm2cUEUhHJn+LAWgUh3Au0vPov1CGO0A/qrLqylnx06POp1De/0qysFX8N6
         8B4FM8VcxwZ91EqumUGW72EcpV98q/T0h5fG0mllc187LBQZqg2AqUmiwAlAKC5eml1x
         ui/15Xt5AWQNRgu6mf6by7pU0Il7JuPpYSByGeeDKx4N1NnyMZvLBxQepXVHuxPA8F5l
         sJ3dsRu0D8jk0nu9n8tWtiF0SCZ1jp7n+wlLCzYV5FshRBIx3ie8ZKXRtOHE5JJn1pM/
         6F+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=dMwa/06wi6BIvxUHIUCRb4lYw7MQ6QxIe/P6I3MuPNo=;
        b=A6wH5NGz29eexzAAppak1F2D1MB/gdoRI8jQw8GsgMdIoJLHeoB1Xrpiei8lo++J3c
         xrun8z+TOeXAEsgq0A9MCwjmuOVqMyDBKJZfMMsHtYKf1VP+AbeOu6mWh4vpndWpSbma
         u9bEFoy8i7JY3yutShRjK98zh/KBc7BYhB2WCzTHnnVpZOa1Ve9RBEqsMyU5c+Ny+oq2
         X27d7+L6YCW1xYiGDTtqPV+X3RGpt+7p0dX77yypJX4u9VrVMk3y2DXrBPo1T1E8kCjO
         zSy34jgiqYvdgqvEri6j3YSwbhTl15VqixOZ9qBvDEqhK6DqCMHLkagxbhT9Cc2teUb6
         tnqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dMwa/06wi6BIvxUHIUCRb4lYw7MQ6QxIe/P6I3MuPNo=;
        b=kKjFCMKfVXXnKyt9FqucvytJtoJWWyGmByUwDTsww1QxS2dsbZOdn4n+Ioc/3cqjMi
         F9v35wmmjFtaOeX7Vznw3sV2mN4OjQ9P/cf+kJz62Qpo9TfjjyG0IrJZrCEF1ZEWzdBx
         QXnK6vynKV36rKiwvtxCWBDzItjx8kPrHpdY0bnNKvvR9rvbLQ19OCNs+rrq7LLu7Vaj
         Y1TCGogfl+bAxA4EFReeir5cBnk6PNQHa/KQvZqXlCYDB4Rl0JXS6RQ0aOSiztv4V4XQ
         e90P/2J/xrXtAoPksjAb1AFEx6XgjGm3xUbn/KWWljXv2s/P2tMSrw1CSKARFTx32qjy
         MXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dMwa/06wi6BIvxUHIUCRb4lYw7MQ6QxIe/P6I3MuPNo=;
        b=UG6C+Y7mFL2E8k71nNQKmnLX6rQ3PM/TUhgzT1bpNJH1yCC/5DYbV3mD3wdF9I5YYk
         aanjbWD8lUtZr85NcI9fEPG0SUe3LeAux58o1qYccTk3yBty5b6hita6bNjawwW7Ru7M
         aOHea3mlWPbapQahA///BmWU3UcPDUzyqFiOkM++rV2Ei7eivDkNsqxgqGmAZH/QvfG0
         YfCflaY3GDxzUrdPCoXI3Wxg9sfCDk4CB4J9hQXMsoYrYY6hggNtfSmzOIk2qbcl9Gx3
         MVcMX0hurpw4KubZgtLaSPhBZyMXayCYORSCUG9GxEA4s3tu/bWxmp0brH8bssODxTRX
         DutA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVkTJkJRbnyEvcanMFHSmM+AIz2FPZF/aZ2sbQkxdAw/HgGZWA2
	/NRKqpjjwpA7SLKIdbmCMZQ=
X-Google-Smtp-Source: APXvYqzKVjWLeL6yRvUqJ9S3cMZK2/Sefrbzew8iPGFmYdtv7tcBigHuLZb2GQOlqMZVBET5h6r7zg==
X-Received: by 2002:a92:9adb:: with SMTP id c88mr4342727ill.193.1572502633833;
        Wed, 30 Oct 2019 23:17:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:7d42:: with SMTP id d2ls285229ioq.7.gmail; Wed, 30 Oct
 2019 23:17:13 -0700 (PDT)
X-Received: by 2002:a5d:9e58:: with SMTP id i24mr3688319ioi.255.1572502633371;
        Wed, 30 Oct 2019 23:17:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572502633; cv=none;
        d=google.com; s=arc-20160816;
        b=HAYV7LzTflzElf0fy9u9J8EkbOyagnyXS6iJDkvIzbmx2aYfQonDSxfnLBc6Eqnt1D
         b4D3R+fxyCfVVEzSVewjv8rKLt2tCNKFv/8ffBG7EgG3qJiro3fqhaZ4TWFKgE9cG61z
         jpCzdkEjLWNB1nIF8W4s9pcM72zn4ooRyuJHX+xEbKtHv3ouZeHYUSFADpbLUy1pXhkp
         xWWevHNQm9w3QKGlwyCfVhy0BtFQw4ExX6pNxd3eTSD9bqp9aFP5jEh6nBqeXUUoleuQ
         D8fQ2AG/swVBTRROEhr3c8lK1ripv/h/LVUw546WX10fU8hiFcvhDAyOOUuTb+w3Zoxb
         te6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=5AKFQbOKoNPXJ43FeIxk1RucFADoGYrjzSMvEDGOLOc=;
        b=NbAcKdFsXJ97XL7iDPcGjD3Gj0h85iz5BhT/7rh2rTYtRjOQQsxHWpqI+x3HebAp24
         94Z1C/JyLxCaWGLqdr8MtsI5e9lES2efvB3tPkr+YU9QJ3CG3tC0gpLxOrWIfpI00tU0
         JdXuOz+d8JBc0fyGaIhW5RQsZkxf/mnB5WpHghwYQuZzU423drEZoM5iZ9F8v10PXkzY
         Zm/uHSMLY6CMrYu8pTklqMnj27XSONxdzI3Db+AW5KVlOQLmjxhT9J7+yWlqBCmAF3ne
         q+33EQH/N3CXcg3kJS5X54inmHpmSD2BQQ+F6UZCnt3yRJPDQcFiHYQzFRp7EyZKiEUM
         vJoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id f5si226195iof.4.2019.10.30.23.17.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 23:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from DGGEML402-HUB.china.huawei.com (unknown [172.30.72.54])
	by Forcepoint Email with ESMTP id 0AFC086FEEB0FA7199E6;
	Thu, 31 Oct 2019 14:17:11 +0800 (CST)
Received: from DGGEML422-HUB.china.huawei.com (10.1.199.39) by
 DGGEML402-HUB.china.huawei.com (10.3.17.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 14:17:10 +0800
Received: from DGGEML505-MBS.china.huawei.com ([169.254.11.138]) by
 dggeml422-hub.china.huawei.com ([10.1.199.39]) with mapi id 14.03.0439.000;
 Thu, 31 Oct 2019 14:17:00 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: "lduncan@suse.com" <lduncan@suse.com>, "cleech@redhat.com"
	<cleech@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWPliQLA8PIGoMpTtGRxNyp42qoAA==
Date: Thu, 31 Oct 2019 06:17:01 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
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
 (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as
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

In iscsi_if_rx func, after receiving one request through 
iscsi_if_recv_msg func, iscsi_if_send_reply will be called to 
try to reply the request in do-loop. If the return of iscsi_if_send_reply
func return -EAGAIN all the time, one deadloop will occur.
 
For example, a client only send msg without calling recvmsg func, 
then it will result in the watchdog soft lockup. 
The details are given as follows,

Details of the special case which can cause deadloop:

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

Here, we add one limit of retry times in do-loop to avoid the deadloop.

Signed-off-by: Bo Wu <wubo40@huawei.com>
Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Suggested-by: Lee Duncan <LDuncan@suse.com>
Suggested-by: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>
---
V3:replace the error with warning as suggested by Ulrich
V2:add some debug kernel message as suggested by Lee Duncan

Thanks,
Bo Wu

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
 		struct nlmsghdr	*nlh;
 		struct iscsi_uevent *ev;
 		uint32_t group;
+		int retries = ISCSI_SEND_MAX_ALLOWED;
 
 		nlh = nlmsg_hdr(skb);
 		if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
@@ -3712,6 +3715,10 @@ iscsi_if_rx(struct sk_buff *skb)
 				break;
 			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
 						  ev, sizeof(*ev));
+			if (err == -EAGAIN && --retries < 0) {
+				printk(KERN_WARNING "Send reply failed, error %d\n", err);
+				break;
+			}
 		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
 		skb_pull(skb, rlen);
 	}
--
1.8.3.1 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED%40dggeml505-mbs.china.huawei.com.
