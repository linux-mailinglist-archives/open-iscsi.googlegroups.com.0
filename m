Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBFUXW37AKGQEHNJGWWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B0A2D0900
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:35 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id j1sf9473842qtd.13
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306134; cv=pass;
        d=google.com; s=arc-20160816;
        b=SUui8DLG9YOqD4+sWki8zgJUKwnY7FC5fnmOzvL2513LaDI/G41Qjfg0uMpRG+wgna
         Z9bnoefM/qgIBrvqrhD5lkWxxdR/IS/1HMmwE9OskaKh3WpNRciWF542PaEUg5PidXSk
         ntakyuJHSBZCy/w6/lJOluwnp423k+FwkXQ7GdoSxiENe+FZkM+CUUEFQZgx6oqRZOES
         BnyR0RUm5Q+zcTIUeWuzYBWjG7Ts6tsPQGHA7dTNM7AT/qD/SOGdnd2TqodUZtTGNkz+
         s7dDrXO+5/7Kegb01H56DVtENMy7y2703Ld5Vf2Ny3zNG7ZZ4QSuH7MtXysdIFY22xoT
         L4+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Z8uOAzYAbJ4ibQPqz7tbS+3GhlDsUO7A8cGyC8qSLHE=;
        b=Wcf/EIcsdwDBJMjmJoB53ZkEt8uHcX51np67XbRyJg+ro5Acwp/R1admO5qI6yrRfc
         wL2QfRw+qADD+XvfGWQEkPWUTC80BUaTMjyc2R3hH0zg5Ep4F4gtzMa6benmb3Q3044X
         J19h+Y/46MxO1x/jfl3zr5/2TMVJ6Up9lFuBYZQSEl1WYb2ZEwwJ67Wjot4GcHDLnNcN
         mJBwDZ8+tR/m+XO7GgslW230AjVQMHEquH6sJM12IVXyXLf6YzJHbaoMytw9Fmadljd4
         QfswNDBPihStNPxTeJjoJe0wQtXK8cXdP9IOqzrL8GcgevkhGaT7WvOvR5Vq/ql//hPL
         o9EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z8uOAzYAbJ4ibQPqz7tbS+3GhlDsUO7A8cGyC8qSLHE=;
        b=FUaQIaYdW+iTHtPMNTv1rfPyMT2qPrpdRKMOznB38VfMXaegkPdAMbkglrkvdf8I4E
         sfxo8HOHCwQJb731Vptaui4nBM9U6X2o4dGbMajMR3LD7GSj/MssweSgjMQOCzI/XiNx
         wznGEAbVIuk6tmcSA9kot362Wmb+n5meg70wn5sjgdhR0JDVUjr5osNxfkVvrzhOgLVj
         NMbP+nba1tgdYuPtKNw3flpoSO7J03T10Z0HduB2B2uVg40sHZJOo3ZbsYX870qLFRmI
         zCklFN1+FGv7k2FYJeyn2nriEgrkrU96Y+MKonSGAw9E5gXYiEUfaV4yp2nDX9SN1np4
         6IyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z8uOAzYAbJ4ibQPqz7tbS+3GhlDsUO7A8cGyC8qSLHE=;
        b=XVi3ga4f31g4+iIHIkO7yA4GBOTOv41nU5JlvM/2KzxzbSW8KJfHdeeGKwTidEcymA
         wafLV/rFxy6vyHSTQJxtoWAd0sshZoAVcQ1AG2uGYACJgIIX0BlIszmkStf99rt5fE45
         B+bjqncarmlvlpGONtvcXeYmznFiXQ7NGtbjCFsKuOnf1WJht/8gu2xJF6uNg53pspuI
         11+u+xd+RFRBr+A5FuSf6xi8dazaG2i7IGExDHUmn8m1eUGeQx8zTsRzmxrZzfGAIhiI
         cKdP7LGV6X4RgVtU+hOwySJujRPRZrHnl8sQitnKhgxZEXUtkHBRKhtzPojvc/eDUE92
         g8NQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530wmHLq/XeQv1sXzobqeIn1jDC7O+rEWCncJ5seuBigcpDrKex2
	3MLvjiLUop+uhAot56lEMxY=
X-Google-Smtp-Source: ABdhPJx0N9ywHQaTAdK5DgfkJi+VWC/lSjMgYX48Tu1OmVjDMMLHsaD2ROIM6OcnMBhWmD0AGUf2yQ==
X-Received: by 2002:ac8:3417:: with SMTP id u23mr21896206qtb.80.1607306134648;
        Sun, 06 Dec 2020 17:55:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:648:: with SMTP id a8ls7338187qka.2.gmail; Sun, 06
 Dec 2020 17:55:34 -0800 (PST)
X-Received: by 2002:a37:9d16:: with SMTP id g22mr22483196qke.62.1607306134292;
        Sun, 06 Dec 2020 17:55:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306134; cv=none;
        d=google.com; s=arc-20160816;
        b=og/nnh2Ybh9tVQDbvop0YcQoBEuqeE+NYXtuiEKRxyK9m9jsGQCWJesmlweNe2nZmD
         BLBbFMPPlbT00Tt7PMlNKCat27C8Mu8DBUxlZDs8+3q6NSTfONuzvaM/HkxS1nN7zVaW
         aPhUsa0BQKSoYaBs9KK5iuGUWllBPvA2FMjlHNQ+1iOLgSgs84+Ztijt8Z5flH9Nr3ph
         dX+4vX2zW63cYMCr20MpLrewQeTazrgJe7EhvwoCvOuS3Zc+aOFbNuTqJczS7DZZUyQ7
         Lr4tz43n3q8l1rDwjr46VfW6ZtAoNIZ+8bUPJ7Icuw3aiS7C4jsln18E9cdociMCDYIY
         SeQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QtjcfcYM1cTU8cCHdRLWLF5Zk0hICCb/EXimMCgwzmk=;
        b=S2NR1D+Lwi9XIADOwr8YoizcQEbiInuk5b7mq7rda6tZVVslN4q8Z7ZF7yWk3XKBlF
         Wo1wBLz9JGqTxc/h2X81zB3Ouirk76xYfpWWsI9fmHcrtEuQnUdXf2Gg12aLcgRh495P
         RotDlKqLWZ9zkwLJgb4OduSGOqMbVYnyy7oKGrlHuJcQVFPMDsyE2ocRLn+Aph6HA/pM
         +xpWkmJiAPLGPSyrfT6zcvV41XkFOjHSGuJKR0Qop86yskVIqqQdfnqe0jfHlyVXRPtX
         MqFhx6e1Rwo0A1EP7X52irZPI626Ad0JvnC7j+fMjKDvvyUnM07XU2BvwxleWoxABeZC
         J7Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id x8si561017qtm.3.2020.12.06.17.55.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vx70mhzM1S2;
	Mon,  7 Dec 2020 09:54:21 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:49 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 11/12] iscsiuio: Remove unused macro IFNAMSIZ defined in iscsid_ipc.c
Date: Mon, 7 Dec 2020 09:54:09 +0800
Message-ID: <20201207015410.48488-12-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com
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

IFNAMSIZ is not used in this file. IFNAMSIZ is a macro defined in
net/if.h. Maybe this this macro is defined here to give it a self
defined value rather than system pre-defined at beginning, while
it seems the code reference the macro in this file is removed, so
here we can remove it.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 iscsiuio/src/unix/iscsid_ipc.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/iscsiuio/src/unix/iscsid_ipc.c b/iscsiuio/src/unix/iscsid_ipc.c
index 2acac48..ea03d37 100644
--- a/iscsiuio/src/unix/iscsid_ipc.c
+++ b/iscsiuio/src/unix/iscsid_ipc.c
@@ -54,9 +54,6 @@
 
 #define PFX "iscsi_ipc "
 
-/* TODO fix me */
-#define IFNAMSIZ 15
-
 #include "nic.h"
 #include "nic_utils.h"
 #include "nic_vlan.h"
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-12-haowenchao%40huawei.com.
