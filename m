Return-Path: <open-iscsi+bncBDO7B5X3UIBBBR6J4P3AKGQE2WLWWNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4841EE43C
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Jun 2020 14:10:47 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id m14sf2346666wrj.12
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Jun 2020 05:10:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591272647; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wIkzsdKn0NtfQOU3PxDW8b0wVRT8l6oUQBtz04RLIhdF3+anFW1mQnZLe4l+U+k1N
         7woiXrV0MaTq9QsBCCC9Wn3wU8VNEwRbQYv/1/ZP//4jGaFlNfK1kHVR00fWArQ46mcn
         gfbuQbrEVPdRQBMlPbSy7zH4JXVnbx6rvZPs1gDguVNypgZ5mo/Jq4oP25OxK4IOzbR2
         rbpbkdQ9lcINxn/coM6qekW/hfleb8MyAbQykYpAyCCaXTJvQMxspJqvgB/v2rk65x8C
         MK/YFAHk1mwVaDUIApkJztkyEW8gq01UEousP7pcEbGK/8gaC3jNEtRzmTdmgYJv0Tj9
         sJZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=0JLbjeG6I0W9P2RbzkahMwClg+iJdwZd/Aq7Ui0xNVc=;
        b=Y38BpTFSGlc2YbfIqByQzXgK/wJEW2MqFL28XZlF4cGjOUOkDz2WLeE1EW0SmoLGux
         QZpmhqIkqL/WjeuXKBLWwihZ2pnDRyxj0MxUmbh1M1L0TXctuNbRNa4F20LOsSrlwB6d
         X0rZxDpAFCpN8YG806+2NM8HGE3NXyQDJyw0FUbbme+om4iX1g8mYxZnfkJCLlqFJFOv
         WPgtv0jShf5LDFbC5Tarq+WGOLqnoTETr9wdnzOyA/Dz75TgFBIakvzC5rWOeiRkJTzO
         W4r6JSed4xoM+VY861tWpvaeRa5HsHKOBE58z5AUxq/2F7DicypQPDkSTrh27yVR3aY3
         PcsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JLbjeG6I0W9P2RbzkahMwClg+iJdwZd/Aq7Ui0xNVc=;
        b=PdRJOVWGzi/qoBPCKrwOil5UbJrqRkwWMNWcaNtcww6yrpWLBtr/5cI3I6IfBUO/v2
         ytGBDy0ieKD1Pf0pKX+NCU2u4QeHhMiybf8Ao5mO81zgg8idL0Nfg0zPHvLjtf+hfe7W
         oTgkkTC2pxfFOGCSIS/cKgR9kZkcPQ4NDACwe+qwHSaNNfdj+9ccIfDSNSdvp+/N1Knn
         Xtm//cNvDdwxjpvPNhpGlRLy66tzD/yTS83UYGyAbrtwbszGG/cMjehuCRHrWNiHX0HP
         681d2Vd0XpKX/mb4xl29hKX1pG/VCaWiuL7ITWSy510F7sgiRKRUGtVhTdhmtM3TjGYn
         UHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0JLbjeG6I0W9P2RbzkahMwClg+iJdwZd/Aq7Ui0xNVc=;
        b=OkuOxcTCAJDB+TsFUD7zoxfIzL0ILn4hM6f7+mcK8LlcVfDWJc91qBbJqnpNmT4VUb
         nkQODsxv7Ajlsl/3em1e0iubny0s7fqEKgxEAfWLoxT0ekzLmyiw0ANizxXI+LlOu690
         V1wMU1q2LDvYu38Sl3Q2DJwSkNTiBKi9wqni8qp0Z5w2+FeohgjC1KTQdp6W/5Snuy6I
         MIqsZ0MzMyrYjxZ9AimmdiyjaySP70jk7gUpBJFmcurdf2dVJDOGNZRZHjqPnz4AyKT/
         E+OMQqNsvaL0KR4JPRrJglBneYeDbXMjFw8t3Cod4t1eA6Wy5hy9ZowlfhwOgTHbq39L
         HkLg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5311xD1BzlJqc2lenjd0vQXJS2GRX12F5HJi32XMx64evcjtSoaZ
	u9fFgxPpQUtePK8F2OQWfRM=
X-Google-Smtp-Source: ABdhPJxvJ7K4FRk3GawZDnCx5IgIwl3+pBI2kepGX/5ZUlfQ2X7CcpyxvW+Bqwn3EfOaqQko6Zun8A==
X-Received: by 2002:a5d:6751:: with SMTP id l17mr4472833wrw.179.1591272647176;
        Thu, 04 Jun 2020 05:10:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:e510:: with SMTP id j16ls15061wrm.2.gmail; Thu, 04 Jun
 2020 05:10:46 -0700 (PDT)
X-Received: by 2002:adf:fb0f:: with SMTP id c15mr4452893wrr.410.1591272646651;
        Thu, 04 Jun 2020 05:10:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591272646; cv=none;
        d=google.com; s=arc-20160816;
        b=NA+6Vg5V29Ukn+cUcOE+lSnYE2dbMDU51pyoUwHs9I5osjSoEM6jHCx5ENfP3aPgW3
         b3U3qJqUikdtmYH3V7G2Ir83KQgXzgFOHTvKcHEBrY+1yvSCaQkqxydpOJPJ+xprUsac
         cH2bmA98XfWFnK3SuQeP94AMUBGmuau5E4jWqX7kT4UbE2CK6obcCcAc6EMAOqIqdo0t
         YGoBKTnEajADsexLpuIPsTTgzOlmdPhn0Cv4sQvoelJ2QTmFOtzJcpQq5PNvrCx6/2jb
         pErq2DXSEBH2dwykAPNTQlizek731PJqx/UGO+HDJOWdBLh8/f5Ga518eWc9zcyUzDW6
         XJeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=+4UY7xC/FI4i+8GgLC1HBKXGUA/Uxqs8WjAOuVCWqFI=;
        b=fBovjye3ubufEmTOZxJzZCYRMw58RxZtBOmvSbbcfr1N2U02l5Jt25YYPy3+r6Hgia
         TB2obDIDLXPgcZzkucn85SIRPP/+YfYXm2j1ZOegWWaXA38nf6paj/OprhDu/JEkYa1v
         YoSQbvp3zMwxRqhp6oYFOVlm5Buwkfs2vLYfRiNI828/pnf5q1E9GD0E7DzhT95CtNU4
         8r20jj8rK+817prcqW4sfPC2yv3F/i7/5dX6Kho9vWivyr4qIZqvwyky6IwhMVFDXEY7
         bkNyd4EY8EcasoaDth9M/2ZHxu8ex/80QPgn844aV90JRRDt67NOWCY6CTq5zSaYiXGa
         OHCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id o14si278121wrx.2.2020.06.04.05.10.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Jun 2020 05:10:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 6877FD9B0F4D7B4F3E19;
	Thu,  4 Jun 2020 20:10:43 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Thu, 4 Jun 2020
 20:10:35 +0800
From: Wu Bo <wubo40@huawei.com>
To: <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <liuzhiqiang26@huawei.com>, <linfeilong@huawei.com>, <liubo254@huawei.com>
Subject: [PATCH] iscsi: Add break to while loop
Date: Thu, 4 Jun 2020 20:23:35 +0800
Message-ID: <1591273415-689835-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as
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

From: liubo <liubo254@huawei.com>

Fix the potential risk of rc value being washed out by jumping out of the loop

Signed-off-by: liubo <liubo254@huawei.com>
Reported-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
---
 utils/fwparam_ibft/fwparam_sysfs.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/utils/fwparam_ibft/fwparam_sysfs.c b/utils/fwparam_ibft/fwparam_sysfs.c
index a0cd1c7..87fd6d4 100644
--- a/utils/fwparam_ibft/fwparam_sysfs.c
+++ b/utils/fwparam_ibft/fwparam_sysfs.c
@@ -115,8 +115,11 @@ static int get_iface_from_device(char *id, struct boot_context *context)
 				break;
 			}
 
-			if (sscanf(dent->d_name, "net:%s", context->iface) != 1)
+			if (sscanf(dent->d_name, "net:%s", context->iface) != 1) {
 				rc = EINVAL;
+				break;
+			}
+
 			rc = 0;
 			break;
 		} else {
-- 
2.21.0.windows.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1591273415-689835-1-git-send-email-wubo40%40huawei.com.
