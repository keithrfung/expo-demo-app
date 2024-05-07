import { StatusBar } from "expo-status-bar";
import { StyleSheet, Text, View } from "react-native";
import { COLORS } from "../styles";
import { useTranslation } from "react-i18next";
import { FC } from "react";

const MainScreen: FC = () => {
  const { t } = useTranslation();

  return (
    <View style={styles.container}>
      <Text>{t("welcomeMessage")}</Text>
      <StatusBar style="auto" />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: COLORS.white,
    alignItems: "center",
    justifyContent: "center",
  },
});

export default MainScreen;
