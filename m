Return-Path: <open-iscsi+bncBAABBHF4S6QQMGQEA3BNBDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x37.google.com (mail-oa1-x37.google.com [IPv6:2001:4860:4864:20::37])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2346D0E53
	for <lists+open-iscsi@lfdr.de>; Thu, 30 Mar 2023 21:08:14 +0200 (CEST)
Received: by mail-oa1-x37.google.com with SMTP id 586e51a60fabf-17e3d37b3e6sf10441895fac.22
        for <lists+open-iscsi@lfdr.de>; Thu, 30 Mar 2023 12:08:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1680203293; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q6R2bs6CSjvX/1+/Cw6FtDpvRrWO5Yx3YhE4k3peZ9zu4waPuqniEdT1pVJEKGz4rT
         NjfvcMsUgBs5p9eUh3TLYjIHfqHNGe/CfeTcjUQP0Tzm4SzqLxha7o4KhSf1CwpVzuT/
         ESN2bL040Gin3UR1JCkN2WCNsGnowPadMz6s8kGYOQoKrWjoriT2HG4qvsu8Pfs+WBYT
         7w1fBsBxubXN0RBBw0AdVKzK8v0gTiYvn2VqB/T+/yCE+WkR9gDwn4gdkAI02BW6pHW4
         tQtUcLiJ3Jt0MaLaAaKTGldqCDJvdtCCYTrdHkJ8fQOwihToxwk02Ur35CZT77I+NvFE
         C41w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=MCFKomgn695p1rUPuOwsCzHmlr2pvX9ha3fD+w6NZVc=;
        b=x4x1A7pu1mJ+FoV5la1iJ1CNdHr5oTgegYwWcf3XJ88AXe771y9nxLt9PZD65gFgQW
         nCQHtdOnBcAY09YgyNaop+7/CMeozEsTpFzJkU3+k6mCSORBSSxnsaC3+BLNFmvQL/Xm
         0LEOWrWG4/N7r74n5bcglgEESIMXnLMn9cp8K26gzlCj5454HulDdU2y4oeBN7OMftj5
         Fj+VjJcyHQfVVXWu8Nd3gDGVIhqxe6sHqT7fYpwfoByl9gJ1Ku4TLTjNjHxcUUSixuIk
         E6BYkOuwIiAXDc/pcqa6itWQeqU9Kc1gqAI+ICzgPuMhTVbZF+cqO5fkxWV9NybSM7Op
         NFOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of zhongjinghua@huaweicloud.com designates 45.249.212.56 as permitted sender) smtp.mailfrom=zhongjinghua@huaweicloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1680203293;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCFKomgn695p1rUPuOwsCzHmlr2pvX9ha3fD+w6NZVc=;
        b=NONy8Qi43dm7/lzUSE71kLiZOFCqZl+CeEPdn9rUK1UKIIaM6eqOXKseCyGWI3gNXB
         DRehMHucE+9oXm5JvXy6zLISG3CnJlWjqyUqBYAhtEWuH6VRtAGnmRTIcMgKw2El798t
         pIQWCvsHHGEU/Iodx6aoJBQ+M7wFqopEAjjSEIlQmq0PyjRP6ki+aGUgy0b67Aj/F2q6
         S6ZFyk88OvHx2UBWr1MWBY3tGSZpF2WTYQuL7wMzQUYKalTPgFWvzUIFMvElCj4YcZs1
         9v9ZPuly4UZRrx5a1RvWMQBf03lAyDb878zyF4J6cZG2ZsVxnD5so+ze+FkUJvKTy7ud
         Edvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680203293;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MCFKomgn695p1rUPuOwsCzHmlr2pvX9ha3fD+w6NZVc=;
        b=Gq/VEvvRioIAT/MROoS2iXunD8/aYNx2nPRpzcbqB882O2TfwrYrxPSbcaQ98Jiv3Y
         1VCFhGYT7rK1tIHRhDWESXa0Kw1VNmIMLQPG0LB+vVddcAllNzn+MFkfc3eyZ8Rvjr9D
         KTou942WP+2S3Bh4ZBfgpusBJ3XlHPHjrtqM2iA2aC0AxmqVdUmiDUa0zaYnH/8pBUaa
         vmH95My/40LuNFI6YzLtdVkNcIPp8dGxskJvNi8yDhmZW6ebmJduc8/Tngd50GqcQQf/
         Z2kHhO9XCEd5ACc7/pwiCZEccCaApOW6ktT8+sNGns9TBCinnXnqZGmspBZe8IjsJf2A
         KCgQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVe0qdanq6xxnK/PQ8pYiAKoLdYSOirTFIn8t3P3PJnD5cIcQpS
	b7WwWIaR1tf3GjU8Gkn936k=
X-Google-Smtp-Source: AK7set/1mRZKpON+t9Vrpb1JONB9YJowshJx28DiOhft1POlComSM/GduEe4qD78Lac3ng5p0OZBVQ==
X-Received: by 2002:a05:687c:198:b0:17e:3201:41b0 with SMTP id yo24-20020a05687c019800b0017e320141b0mr7895684oab.5.1680203293183;
        Thu, 30 Mar 2023 12:08:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:9a2a:b0:180:2c8e:4c3e with SMTP id
 fo42-20020a0568709a2a00b001802c8e4c3els468425oab.5.-pod-prod-gmail; Thu, 30
 Mar 2023 12:08:11 -0700 (PDT)
X-Received: by 2002:a05:6871:60cb:b0:17e:2e88:40dc with SMTP id qz11-20020a05687160cb00b0017e2e8840dcmr6068616oab.11.1680203291868;
        Thu, 30 Mar 2023 12:08:11 -0700 (PDT)
Received: by 2002:a05:6808:188a:b0:387:2d72:b0f4 with SMTP id 5614622812f47-3895eb64024msb6e;
        Wed, 29 Mar 2023 00:18:07 -0700 (PDT)
X-Received: by 2002:a05:6808:984:b0:384:833:2a79 with SMTP id a4-20020a056808098400b0038408332a79mr6985593oic.48.1680074287390;
        Wed, 29 Mar 2023 00:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1680074287; cv=none;
        d=google.com; s=arc-20160816;
        b=fmZHHh+zgmX0pwn8jBUp44LUXVHY8YaOOC5yga9ZuEdHp1ImczDp3QkU550m2EtZI4
         I3Y9K+I6EemgYnpeFztQK/tGTS7jkB6v8j2ucHywI33FEfEr1BmuuS4CjS6u9r9SUbSP
         2TKzNUR49Fp4bRbCm4VcXr9i7JGvityVARZUGBtIVNi6aebg+fvuqYVqe0zNutb6O3KZ
         9UMoNt3m0Y588wE/sm8Oy8mp5utlkTCl4fjIWSk2lbt5MB3tFmTgDe2ZJ94FV64tIWmM
         fbfjFfO9/lGTLn/QVAxfMiZHWyapoL+N1KiZbZNDQjjCi4Mup4xWo6nMalsCJ8N03Lva
         WBbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=rFtikJjWMTw0fpXqeUYk2bXOJVKYtWFbo5m75FcqWzE=;
        b=eUMaWfbZ7SKEWmSi5eB5T7E6WPEuiHkLXfK4JX7UlrchYkrw0JE21IHlkdzUZNF8r3
         0iSRv7uueATpt+/sI7pWbiQi2lYaABvJfjRPiBxg53U3wTTifp0fooLz1kXF9vYptSgW
         8Xt3HVjmbZWzxeQctL9qcMULhpAQIbYb2vJ0+GyzSwHgWdcc1LaG8A+sNeg5ENcwGWBr
         OTJnwshHgt+sUzjy/Pk3bWDyy0gGtTYPrcNM61cCYrlIll1JQOABlhfSVUNvwMoLaoay
         +vVIErKn75WJsIOd1fnvSB87jUZ4a0d56rUtLDnsVrtKD3w8XoWKc1mLgvc88xby1ZUz
         MkMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of zhongjinghua@huaweicloud.com designates 45.249.212.56 as permitted sender) smtp.mailfrom=zhongjinghua@huaweicloud.com
Received: from dggsgout12.his.huawei.com (dggsgout12.his.huawei.com. [45.249.212.56])
        by gmr-mx.google.com with ESMTPS id r10-20020a54488a000000b0038756a0f744si871080oic.0.2023.03.29.00.18.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 00:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongjinghua@huaweicloud.com designates 45.249.212.56 as permitted sender) client-ip=45.249.212.56;
Received: from mail02.huawei.com (unknown [172.30.67.169])
	by dggsgout12.his.huawei.com (SkyGuard) with ESMTP id 4PmdDf4kXdz4f3jYP
	for <open-iscsi@googlegroups.com>; Wed, 29 Mar 2023 15:17:54 +0800 (CST)
Received: from huaweicloud.com (unknown [10.175.127.227])
	by APP3 (Coremail) with SMTP id _Ch0CgCnUyEi5iNklZgMFw--.48573S4;
	Wed, 29 Mar 2023 15:17:56 +0800 (CST)
From: Zhong Jinghua <zhongjinghua@huaweicloud.com>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.vnet.ibm.com,
	martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zhongjinghua@huawei.com,
	yi.zhang@huawei.com,
	yukuai3@huawei.com,
	houtao1@huawei.com
Subject: [PATCH] scsi: iscsi_tcp: Check the sock is correct before iscsi_set_param
Date: Wed, 29 Mar 2023 15:17:39 +0800
Message-Id: <20230329071739.2175268-1-zhongjinghua@huaweicloud.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CM-TRANSID: _Ch0CgCnUyEi5iNklZgMFw--.48573S4
X-Coremail-Antispam: 1UD129KBjvJXoW7tryUGrW5Ar4xAw1ruryfWFg_yoW8Gw4kpa
	1UK34UJws8G3909Fn0gF45uFWYq398GrWIyFWjg343Z3WSkF9IkFWkJ347CFW5Krn7Xrn3
	trWqqFy5uF1qk3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUk2b4IE77IF4wAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k2
	6cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4
	vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7Cj
	xVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x
	0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG
	6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFV
	Cjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4IIrI8v6xkF7I0E8cxan2IY04v7MxAIw28I
	cxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2
	IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI
	42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42
	IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E
	87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUrR6zUUUUU
X-CM-SenderInfo: x2kr0wpmlqwxtxd6x35dzhxuhorxvhhfrp/
X-CFilter-Loop: Reflected
X-Original-Sender: zhongjinghua@huaweicloud.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of zhongjinghua@huaweicloud.com designates 45.249.212.56
 as permitted sender) smtp.mailfrom=zhongjinghua@huaweicloud.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: Zhong Jinghua <zhongjinghua@huawei.com>

The correctness of sock should be checked before assignment to avoid
assigning wrong values.

Commit
"scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling getpeername()"
introduced this change. This change may lead to inconsistent values of
tcp_sw_conn->sendpage and conn->datadgst_en.

Fix it by moving the position of the assignment.

Fixes: 57569c37f0ad ("scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling getpeername()")
Signed-off-by: Zhong Jinghua <zhongjinghua@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 882e8b81b490..b32f3ca3e7d0 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -726,13 +726,12 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
 		iscsi_set_param(cls_conn, param, buf, buflen);
 		break;
 	case ISCSI_PARAM_DATADGST_EN:
-		iscsi_set_param(cls_conn, param, buf, buflen);
-
 		mutex_lock(&tcp_sw_conn->sock_lock);
 		if (!tcp_sw_conn->sock) {
 			mutex_unlock(&tcp_sw_conn->sock_lock);
 			return -ENOTCONN;
 		}
+		iscsi_set_param(cls_conn, param, buf, buflen);
 		tcp_sw_conn->sendpage = conn->datadgst_en ?
 			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
 		mutex_unlock(&tcp_sw_conn->sock_lock);
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230329071739.2175268-1-zhongjinghua%40huaweicloud.com.
