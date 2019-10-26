Return-Path: <open-iscsi+bncBAABBQFD33WQKGQEDZALOHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BE6E7DCF
	for <lists+open-iscsi@lfdr.de>; Tue, 29 Oct 2019 02:11:30 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id g62sf12134585qkb.20
        for <lists+open-iscsi@lfdr.de>; Mon, 28 Oct 2019 18:11:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572311488; cv=pass;
        d=google.com; s=arc-20160816;
        b=yC88kpcHGTL7OdVtHeHBj/R7PIeTaKlypnWcb9xjuxjsnazGe8rQ7Kq7GnoIgpTp5t
         v62yC3ioxcTuVIHKajWgmKfSNEabdChBLRP39ZSRIsGk3awDKcPECxEHj0MKqgrG3hA1
         x7p+CVV+4W8LVwgbCiWXbMD2eg4llC+U9os7pEI5TZntE6jV9Ne/EwOJZeTsLTSpx0It
         Pu/aYTsj7OOyykFddZmMKoLX4VEOlPoaLVAZBNTEP5c4z4gQRf94dGMqS3Hew/D0AsDv
         oJMQbgY5hCvn67K0Q7jQVXdmjLeGoprwzDYEyMl6j5B4A7/YgYUNJ5iCT9wHrGaJLv9c
         2cEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=2Cs0A8osFkfoMoU4AXSGdnJszJl3ahBnXnysry2qYD4=;
        b=ivrhB3LntfGBixgiWo+jP52GwDqvBCiX0BE0SCL3JKq1VkW9N+JbZkHqwm8S7XTIJd
         PY7M3zaztjY2U9Lhl69bw5lX9SU6MTlqAsyq4dIGvdrXIg+mi6NLTXBm/Z52d+zhlX75
         +oEotoSmPXe8X2jjbwzh8Gtxsw7n21vkBiXT+3lQrMbvxegHkOQ4JN9HWNM2KukWqhoF
         vOlCqWiwKemZatIP4wh7yAFKz5pUiQdGY5orpUjRgAgdL+RX9/6GPl4OpFHuzJgov1Nf
         TETvw7/RRrffFkMvwYtjE3MA+PbwZOsnsudjpb8Q5WdOWNPjy/sTHUpJIda2WkF3bMaZ
         yn8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2Cs0A8osFkfoMoU4AXSGdnJszJl3ahBnXnysry2qYD4=;
        b=C2YNXrCohnUiJm4XMiHBfPiSDXACdN4uN9Zw1ZUzzbRB8khmdMbFb9Iys1uPzOtaJH
         UHeANUnHW3RrqoifznYhLFM/fseA4vzjw0pIr7oRNoRkjDiWuDTOikRb0nmWZHG/XsSE
         46zsrW3QRgA1J8gmIqvnr7/yGntQxeDXNSlLSaMjZbFbLCfAuPCw0rilwF7AQdUe7F28
         aGcmgUiKg1caW1Q5L3zzGtwQZ6eWIWC3f8+ZPhzjjmVI/ULobln5ku80ocQNFJC8KcYT
         xh4OIebNcyZgCyoYHp8r+9IUqFFlAaDWmvxIGrqITGRjIknwfPd/kJ3sHSG9dFcqQ9rZ
         +kgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Cs0A8osFkfoMoU4AXSGdnJszJl3ahBnXnysry2qYD4=;
        b=jOLxn4CH28ZyezJTRn6rOFrwiJLM7wbmBL93iQ/2yIhaCdFWSgqxuXiTt3r0jpTlSy
         2RSV5stOvz19HL8FdgbgfrXC+5G1F7Y+vfgImysPfFrG+x/I4J0Je95qjq/FRY4wlLyC
         vq96JF6MpKg7ZRn2kc1Tn+ihCjXiznimoU/HYkDmkx73lYPcLa5bol1lYDVvVE3WzG7F
         aCbBBgFrhQjT7ef4N4VpWbDF8oZ7t5MTwqarTVaePJJ16MMubQYhs9FLalWKwi7FVu07
         pMLlCAwTrqgqjsTsul8PF+I+9tc9QApi5PXGilYn9So2BOtGnU+6qvC11iG/Vfz4ZBqB
         451A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVldZP6n92GgN6I6D1mItnG8CSymhxpj9cOgrm+0EbsqXE6n3SC
	guns4PeBaTZI5KxQ1eHwQbg=
X-Google-Smtp-Source: APXvYqxW0Y8PbOSkAveu810duyH+7afZjxdAbx0g70aH5hdQ2A77lD7AnUPXeA4+3pLefbr536szTg==
X-Received: by 2002:ac8:67c1:: with SMTP id r1mr1516708qtp.83.1572311488740;
        Mon, 28 Oct 2019 18:11:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:1707:: with SMTP id db7ls1927926qvb.11.gmail; Mon,
 28 Oct 2019 18:11:28 -0700 (PDT)
X-Received: by 2002:ad4:53c8:: with SMTP id k8mr16947329qvv.240.1572311488595;
        Mon, 28 Oct 2019 18:11:28 -0700 (PDT)
Received: by 2002:a37:6710:0:0:0:0:0 with SMTP id b16msqkc;
        Sat, 26 Oct 2019 01:56:00 -0700 (PDT)
X-Received: by 2002:a0c:814d:: with SMTP id 71mr7424416qvc.226.1572080160319;
        Sat, 26 Oct 2019 01:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572080160; cv=none;
        d=google.com; s=arc-20160816;
        b=m0zHudgy+stOy/kZuwN7VxeDXD8cRJ1VONrlcpCSrn2IXM8zEa+OmGxv3PRpTAMiM0
         OON1lzSx+YItNgMORkOogtC/GCYEVv+R9ZsA4foAxvTxqypNxUKWMcflMORGP3xK2UF2
         rZshpP5OCiPKAgpemdc5KmwutA2NigP6tzPHn6Q7A3BCmKmYBip09FbL7BXNY33uM3av
         HUrZaO5Ir3ajHu3bnbONBdefMho+TvTE9vWyQRof8dbR238pOJLUIhi54INk5+I870tG
         aub1lHjvGQ0mWpgrARKN61bbRKK9wKUeM5HuSrKM7OGzX3S13GsTGIAwcwI5+leAZNCK
         rdFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=nZUcrBEl34IAthK8y1HeVCeoxkL1G+P5nLKHGIFt8NM=;
        b=KyH1UGmmOiBCW7SzFHj3x1nfa3eOFbdZ6r86pbzhu48zNAIWSWYVMk0kvsH+kAqE3d
         1whY+WeKx+BEa9NjI0HigIIL4UT6Lcaos6FFrzysS5Lw2KHkM5UGZf0CopZfTMzrcYhR
         aoFFYixtfOQc3cbqVVWWdMzXgVIPTtrikSk1X5Wp6Oj/CUeuuhP0eMw9Rz/dRJFfBYSZ
         28S5eV0JQ3Cei6AxgnEWVX1kB/S8Lw3My7QvVCLb8pVnvBGe9QkP0qrP/NKJ29LWnPTF
         e7i1joqAZCN3r0OhBAQKf+vg7WhoLrpSnCKHY+5rUEIwB2MjjleHR+p7e42jbCj/sZqS
         1+yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id z194si285046qka.5.2019.10.26.01.56.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 01:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from DGGEML404-HUB.china.huawei.com (unknown [172.30.72.57])
	by Forcepoint Email with ESMTP id 9E6AC9D3645079E50F1F;
	Sat, 26 Oct 2019 16:55:57 +0800 (CST)
Received: from DGGEML424-HUB.china.huawei.com (10.1.199.41) by
 DGGEML404-HUB.china.huawei.com (10.3.17.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 26 Oct 2019 16:55:56 +0800
Received: from DGGEML525-MBS.china.huawei.com ([169.254.4.36]) by
 dggeml424-hub.china.huawei.com ([10.1.199.41]) with mapi id 14.03.0439.000;
 Sat, 26 Oct 2019 16:55:50 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: "lduncan@suse.com" <lduncan@suse.com>, "cleech@redhat.com"
	<cleech@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: [PATCH] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: [PATCH] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWL2reJ1uh470cQT+idNsWy+95OAQ==
Date: Sat, 26 Oct 2019 08:55:49 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DE9E71@DGGEML525-MBS.china.huawei.com>
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
 (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

From: Bo Wu <wubo40@huawei.com>

In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg
func,iscsi_if_send_reply will be called to try to reply the request in 
do-loop. If the return of iscsi_if_send_reply func fails all the time, one
deadloop will occur.
 
For example, a client only send msg without calling recvmsg func, then it
will result in the watchdog soft lockup. The details are given as follows,

Details of the special case which can cause deadloop:
sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI); 
... 
retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof (src_addr); 
... 
while (1) { 
	state_smg = sendmsg(sock_fd, &msg, 0); 
} 
// Note: recvmsg (sock_fd, & msg, 0) is not processed here. 
close(sock_fd); 

watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305]
Sample time: 4000897528 ns(HZ: 250)
Sample stat: 
curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle: 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140, st: 0
deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq: 242870, st: 0
Sample softirq:
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
x1 : ffff800b34eff2c0 x0 : 0000000000000300 
Call trace:
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
---
 drivers/scsi/scsi_transport_iscsi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 417b868d8735..f377bfed6b0c 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -24,6 +24,8 @@
 
 #define ISCSI_TRANSPORT_VERSION "2.0-870"
 
+#define ISCSI_SEND_MAX_ALLOWED     10
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
@@ -3710,8 +3713,11 @@ iscsi_if_rx(struct sk_buff *skb)
 				break;
 			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
 				break;
+			if (retries <= 0)
+				break;
 			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
 						  ev, sizeof(*ev));
+			retries--;
 		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
 		skb_pull(skb, rlen);
 	}
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DE9E71%40DGGEML525-MBS.china.huawei.com.
