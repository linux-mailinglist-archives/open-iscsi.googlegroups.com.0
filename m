Return-Path: <open-iscsi+bncBAABBJ6DW2UAMGQEWHJWYLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1677AB356
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:10 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 46e09a7af769-6c0ca2454dbsf2507753a34.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392169; cv=pass;
        d=google.com; s=arc-20160816;
        b=COr3Q1LpkK+Mnhq0GkbULsg7ZVs7hwighF88aMG7uHAzIbMpB3lpS3hA4G5NwM3SoT
         2tp9k24DBkkrIIJyoVMPztuK+LQT3uIjcK9+/YVQLbgHQWNrKoYMi7/SRuRyPq0bwEWr
         mfkiaSqM/BLZZ4aN9doonNSDzgKuoGVPmReHk7Ow+6iiwuNVwvGfrB9HCjBabtDGk2SR
         z99u9g4kLGKzDUBug0uC47Wta8V0Un+fe4ZQaXp2uo1Pa3y4E0lViAdKlluCRoJdpW4W
         prh7mB4DU4TA7nTS9vfcgxChIXMdayAkAlbfxtI2LPdIc4iq6XRApFFbMrcdL2qJws8z
         bKQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=cFqVCzHP3Zmfh8pCrySuq1Jw0zYOWNpsDOYaixlNCso=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=DcaiGeqcQT4MCJMaPdD9itKv49wtFQavHW3Gjh9LCiNs+sPDUjZPuwAzvJO/B/UDLY
         ru48Qq5SzrQzIpsJPeR6N/Q4wM6xMopPuIWMW2NBiwZ/Euf7q35f/5eCeVrqMwrbO8rx
         pdyv6grWuU2H5nabcwBvT2mUcBJ7UZL5E0dyrU+k0gSdn3sQNPekMaW5AbaxtE/JKsc6
         2Aelx0tE3A2yvDABhj/K7N4yeUWvlrBYrE6IDbABGq3KiCTMGo2wq6PeZds6Qjr8Dwpj
         BSVaXx9ErQb3lBYAWyGSdwOz8fLFZPPsSPDaB5DabBeBI0+OnrflyqHIhXZ38bnn5Wrm
         8ZHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392169; x=1695996969; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cFqVCzHP3Zmfh8pCrySuq1Jw0zYOWNpsDOYaixlNCso=;
        b=Uy0y6gnwdC18wK4ptUlnW0etzhVwZti13A2q7JgjePKxijjyJtgradaUWVLLiSXHbS
         l7ghZus7wpEZKKgIlK7O3RLQsZfK3opssFj8nCltJaDjJI7jizOFqkXI3pqvO7/PyCbB
         6fPL3bx2GDXMm/yiAnZ7kk6idib0Ym1rxk9a+nvJY4JkYnILel+KSjTEbo+QXya0BP2x
         AiE6s0z7gCFXLUQDuALfuKNiimKlHEla3CP3ccFvBVkfVIohCnLRXU2Vx63wAsI5vmCL
         evDcSinO7x4KI6BXp+SejxfxUhWM7GFiov3DDK2v0U4+6l6op/xH4ZCX3EH6LBM19fUS
         Dp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392169; x=1695996969;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFqVCzHP3Zmfh8pCrySuq1Jw0zYOWNpsDOYaixlNCso=;
        b=K+Azl1NFmW/IMe5Kf0fR7mb39p5fksa3lkJydHkVYKrUArAnzXc+Yc2KKPYAREje2u
         LyTB/eTfiuWx4Iiy7KS81U84O9SljJOwYADKTQcNj4wvPFRI60/5AQyJ5LL+nVJ7xIWM
         jUQ7OsdD+KS7ldX0OG9MYFRxccs0jipSwP4f1XR+XqvcGnvHS/XIJvAQ7cT/gp4bIMrI
         Cdgk+D1ShwpcYCZgWcQx3W5Acz/xdzPa6c7G3nmH6VWbl6OTcxYTuIOXNmBzJYvsqIl1
         RU5G84nJ2yaZDUchyWe0EGsblGYKBWA2QPjDfhbIxwTwKMd+epuaT7et3KasI/Njjbqc
         rcKQ==
X-Gm-Message-State: AOJu0YxNeCvywp53PCQJLHdP2kZT4voqhWZfEELw2McLElaEPUevomEC
	IJnQIjSMLF6r3fcYPFAhU6g=
X-Google-Smtp-Source: AGHT+IGsutzN1vN8f7IcGjfEApVTeeyT5CnvkyS8lnyezXxLqkWp9Ojd5MRAESDCNLrtkq7vj9DLqg==
X-Received: by 2002:a05:6830:1d5c:b0:6b8:9932:b8ad with SMTP id p28-20020a0568301d5c00b006b89932b8admr8308060oth.1.1695392169096;
        Fri, 22 Sep 2023 07:16:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:b2c1:0:b0:57b:7aef:9d1a with SMTP id l1-20020a4ab2c1000000b0057b7aef9d1als698380ooo.0.-pod-prod-05-us;
 Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
X-Received: by 2002:a05:6830:4a6:b0:6bf:146a:b86 with SMTP id l6-20020a05683004a600b006bf146a0b86mr2551609otd.3.1695392167561;
        Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
Received: by 2002:a05:6808:8d8:b0:3a8:7c7d:6d23 with SMTP id 5614622812f47-3adee791c3emsb6e;
        Fri, 22 Sep 2023 02:29:36 -0700 (PDT)
X-Received: by 2002:a05:6a20:72a5:b0:153:5832:b31b with SMTP id o37-20020a056a2072a500b001535832b31bmr9034363pzk.53.1695374976108;
        Fri, 22 Sep 2023 02:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374976; cv=none;
        d=google.com; s=arc-20160816;
        b=BmD3b2mDzvEl6mHOip0Yzl3kqe0pSM6fNhypXUe13Ftqug9ooKdnhFbrpoDEh4dUa3
         5web+EHJYevOyB+s5zxV6AIo/FTvEnpgfFNsmLkSafIUW2lPN4NnHm+qPWPbzVolP/Ig
         WXHkHZTvjsiFXXw0XJQV+umfYpU2WNTQxnu7TtZbQjXauXALaPDf362iylIwDUkIljfz
         OeK32tU1iGhew5AUnCyq0wMCttsEqubUgJkyuQ6GCCyJ+S8nHlwE3Fw8lYXxy7ENwq4l
         2PDyYS18x68iD8FLF8Ji8PB8wCYcsk8YQlcALe4JH15yPpjk0iyZXHxhSfjnZdbct6Kv
         6Rpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=CdrprsVpettEhk+47nQJfFmMEhIOwBXUb4I5zeXYkeU=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=c8N/etUE7GUvM9mO5W6xptM+ro1ey/EFjur/ZXTctHjOLXK3cQAwIPBZkHGOL78z1l
         XEHwdf27u63xNteBYCpdXGRHZFOn5aV7AW20cr+rjrZSfI0y1uneexxzoblGcalipJvM
         IswtU+MnSiHNL3cyU3J0wX8aJEmN6VeDK/GseXxpy3I3FQ+3Uu/8QV2UyDcDe26o3HgB
         CUwPnu9CSGftk7A1ocUF4dqnGBo86EVIZH26gV/M17Kd81emqLdNg2KgBVur4lYEgJyR
         jlqKLzWc48BZ6PYdbj26q9GAur8yfJRhxxhkWHt56sB8XRvEy9JIwXIkeiVpkPAiHSsS
         U+RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id y33-20020a056a001ca100b0068be1f3cef7si392664pfw.1.2023.09.22.02.29.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RsRhV6cCRzGpql;
	Fri, 22 Sep 2023 17:25:46 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:33 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 03/10] scsi: scsi_debug: Define grammar to remove added error injection
Date: Fri, 22 Sep 2023 17:28:59 +0800
Message-ID: <20230922092906.2645265-4-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230922092906.2645265-1-haowenchao2@huawei.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

The grammar to remove error injection is a line with fixed 3 columns
separated by spaces.

First column is fixed to "-". It tells this is a removal operation.
Second column is the error code to match.
Third column is the scsi command to match.

For example the following command would remove timeout injection of
inquiry command.
    echo "- 0 0x12" > /sys/kernel/debug/scsi_debug/0:0:0:1/error

Acked-by: Douglas Gilbert <dgilbert@interlog.com>
Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index ca1e2f4878bc..6235e828c430 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -930,6 +930,34 @@ static void sdebug_err_add(struct scsi_device *sdev, struct sdebug_err_inject *n
 	spin_unlock(&devip->list_lock);
 }
 
+static int sdebug_err_remove(struct scsi_device *sdev, const char *buf, size_t count)
+{
+	struct sdebug_dev_info *devip = (struct sdebug_dev_info *)sdev->hostdata;
+	struct sdebug_err_inject *err;
+	int type;
+	unsigned char cmd;
+
+	if (sscanf(buf, "- %d %hhx", &type, &cmd) != 2) {
+		kfree(buf);
+		return -EINVAL;
+	}
+
+	spin_lock(&devip->list_lock);
+	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
+		if (err->type == type && err->cmd == cmd) {
+			list_del_rcu(&err->list);
+			call_rcu(&err->rcu, sdebug_err_free);
+			spin_unlock(&devip->list_lock);
+			kfree(buf);
+			return count;
+		}
+	}
+	spin_unlock(&devip->list_lock);
+
+	kfree(buf);
+	return -EINVAL;
+}
+
 static int sdebug_error_show(struct seq_file *m, void *p)
 {
 	struct scsi_device *sdev = (struct scsi_device *)m->private;
@@ -987,6 +1015,9 @@ static ssize_t sdebug_error_write(struct file *file, const char __user *ubuf,
 		return -EFAULT;
 	}
 
+	if (buf[0] == '-')
+		return sdebug_err_remove(sdev, buf, count);
+
 	if (sscanf(buf, "%d", &inject_type) != 1) {
 		kfree(buf);
 		return -EINVAL;
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-4-haowenchao2%40huawei.com.
